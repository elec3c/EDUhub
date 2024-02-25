$(function () {
    // // Отркыть все аккардионы в форме создания лагеря ==== УДАЛИТЬ
    // $('.js-accord-item').addClass('opened');
    // $('.js-accord-body').css('display','block');


    // Меняем id лагеря при удалении из ЛК
    $('.js-delete-camp').on('click', function(){
        let idCamp = Number($(this).closest('.cmp_progrlk').data('id-camp'));
        $('#idCamp').val(idCamp);
    });

    // Меняем id лагеря при изменении статуса публикации, а также получаем текущий статус публикации
    $('.js-change-status-camp').on('click', function(){
        let idCamp = Number($(this).closest('.cmp_progrlk').data('id-camp'));
        let statusCamp = Number($(this).data('status'));
        $('#csc_idCamp').val(idCamp);
        $("#csc_status").val(statusCamp).trigger('refresh');
    });

    // Подключаем sweetAlert к Fetchit
    if (typeof FetchIt !== 'undefined') {
        FetchIt.Message = {
            success(message) {
                Swal.fire({
                    position: 'top-end',
                    toast: true,
                    icon: 'success',
                    title: message,
                    timer: 3000,
                    width: '19rem',
                    showConfirmButton: false,
                });
            },
            error(message) {
                Swal.fire({
                    position: 'top-end',
                    toast: true,
                    icon: 'error',
                    timer: 3000,
                    width: '19rem',
                    title: message,
                    showConfirmButton: false,
                });
            },
        }
    }

});

// Success message form
$(document).on('fetchit:success', function(e) {
    const {form, response} = e.detail;
    const data = response.data;

    if(response.success === true){

        const idCamp = data.idCamp; // ID лагеря
        let rowCamp;

        switch (form.id) {
            // Удаление лагеря в ЛК
            case 'delete-camp-form':
                $('.popup').hide();

                const elDeleteCamp = $('.cmp_progrlk[data-id-camp="' + idCamp + '"]');
                elDeleteCamp.remove();
                break;

            // Смена статуса отображения лагеря в ЛК
            case 'change-status-camp':
                $('.popup').hide();

                let btnCampStatusText;
                rowCampBtn = $('.cmp_progrlk[data-id-camp="'+idCamp+'"]').find('.js-change-status-camp');

                switch (Number(data.statusCamp)){ // Статус лагеря
                    case 0:
                        btnCampStatusText = 'Черновик';
                        rowCampBtn.addClass('btn--gray');
                        break;

                    case 1:
                        btnCampStatusText = 'Опубликован';
                        rowCampBtn.removeClass('btn--gray');
                        break;
                }

                rowCampBtn.text(btnCampStatusText);

                // const idCamp = data.idCamp;
                // const elementWithDataAttr = $('.js-delete-camp[data-id-camp="' + idCamp + '"]');
                // const rowCamp = elementWithDataAttr.closest('.cmp_progrlk');
                // rowCamp.remove();
                break;

            // Страница создания / редактирования лагеря
            case 'create-camp':
                setTimeout(function() {
                    window.location.href = data.link
                }, 1500);
                break;

        }
    }
});

const elErrorsMainImage = document.querySelector('.js-error-camp-image'); // Для валидации главного изображения лагеря
$(document).on('fetchit:error', function(e) {
    const {form, response} = e.detail;
    const data = response.data;

    switch (form.id) {
        // Создание лагеря
        case 'create-camp':
            let imagesProgramError = data.cc_program_photo;
            let imagesMainError = data.cc_main_photo;
            //console.log(data);
            // console.log(response);
            for (var key in data) {
                // console.log(key);
                let inputFormBlock = document.querySelector('[data-error='+key+']');
                let formBlock = inputFormBlock.closest('.js-accord-item');
                formBlock.classList.add('opened');
                formBlock.querySelector('.js-accord-body').style.display = 'block';
            }


            if(imagesProgramError){

                let elErrorsImages = document.querySelectorAll('.js-error-program-image');

                elErrorsImages.forEach(function (item,index){

                    if(index in imagesProgramError){
                        item.textContent = imagesProgramError[index].error;
                        item.classList.add('text-error--active');
                    }

                });

            }

            if(imagesMainError){
                elErrorsMainImage.textContent = imagesMainError[0].error;
                elErrorsMainImage.classList.add('text-error--active');
            }

            break;
    }

});

// Очишаем поля с ошибками
let elDeleteImageProgram = document.querySelectorAll('.js-cmp-create-addprogr-remove');
elDeleteImageProgram.forEach(function (button) {
    button.addEventListener('click', function () {
        let parentButton = button.closest('.js-camp-inputs-row');
        let textErrorElement = parentButton.querySelector('.text-error');
        if(textErrorElement){
            textErrorElement.textContent = '';
            textErrorElement.classList.remove('text-error--active');
        }
    })
})

// Если выбрали другое изображение, убрать текст об ошибке
const mainImageCamp = document.querySelector('[name="cc_main_photo[]"]');
if (mainImageCamp) {
    mainImageCamp.addEventListener('change', function(event) {
        console.log('change');
        elErrorsMainImage.textContent = '';
    });
}
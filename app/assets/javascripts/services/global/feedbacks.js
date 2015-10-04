function feedbacksFactory(Upload) {
  var sendPayload;

  sendPayload = function(formData, method, url) {
    var file_attachment, options, ref, ref1;
    file_attachment = formData.attachment;
    console.log("File Attachment", file_attachment);
    options = {
      url: url,
      method: method,
      fields: {
        content: formData.content,
        attachment: file_attachment
      }
    };

    return Upload.upload(options);
  };

  return {
    create: function(formData) {
      return sendPayload(formData, "POST", "/feedbacks.json");
    }
  };
}

feedbacksFactory.$inject = ['Upload'];

angular.module('app').factory('feedbacks', feedbacksFactory);
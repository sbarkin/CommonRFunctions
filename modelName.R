modelName = function(model) {
    if (class(model) == "train") {
        modlab = model$modelInfo$label
    } else if (class(model) == "H2ORegressionModel" || class(model) == "H2OMultinomialModel") {
        modlab = paste("H2O", model@algorithm, sep = "")
    } else
        cat("Error: unrecognized model class: ", class(model))
    modlab
}
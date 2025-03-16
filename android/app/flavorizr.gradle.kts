import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.salooncustomer.android.dev"
            resValue(type = "string", name = "app_name", value = "Dev - SaloonCustomer")
        }
        create("stage") {
            dimension = "flavor-type"
            applicationId = "com.salooncustomer.android.stage"
            resValue(type = "string", name = "app_name", value = "Stage - SaloonCustomer")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.salooncustomer.android"
            resValue(type = "string", name = "app_name", value = "SaloonCustomer")
        }
    }
}
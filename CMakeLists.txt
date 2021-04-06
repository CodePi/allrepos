cmake_minimum_required(VERSION 2.8)
project(codepi)

enable_testing()

add_subdirectory(Configurator/tests)
add_subdirectory(ConfiguratorJson/tests)
add_subdirectory(ThreadSafeQueue/tests)
add_subdirectory(MultikeyMap/tests)
add_subdirectory(Serialator/tests)
add_subdirectory(ResultsMap/tests)
add_subdirectory(Units/tests)

package runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/login/multipaldata_test.feature"},
glue = {"Setep_defination"},
dryRun = false,
tags="@negativetest",
plugin= {"html:testoutput/test1.html","json:testoutput/test2.json","junit:testoutput/test3.xml"})

public class testrunnerfor_multipal_testdata {

}

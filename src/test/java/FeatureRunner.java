import com.intuit.karate.junit5.Karate;

class FeatureRunner {

    @Karate.Test
     Karate test(){
        return Karate.run("FirstKarate").tags("@wip").relativeTo(getClass());
    }
}

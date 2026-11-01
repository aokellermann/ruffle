package {
	import flash.display.MovieClip;

	public class Test {
		public static function runTest(main:MovieClip) {
			// A child added by script keeps a timeline depth of 0 but sits at the end of the
			// render list. It must not stop the timeline clip layers of 'clickTarget' from
			// constraining mouse picking: every click should resolve exactly as in
			// 'mouse_pick_masking'.
			var scriptChild:MovieClip = new MovieClip();
			scriptChild.name = "scriptChild";
			main.clickTarget.addChild(scriptChild);
			main.stage.addEventListener("mouseDown", function(e) {
				trace("Click: " + e.target.name + " " + e.target + " stageX=" + e.stageX + " stageY=" + e.stageY);
			});
		}
	}
}

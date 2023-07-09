import KinectPV2.KJoint;
import KinectPV2.*;

final int N = 128;
final int iter = 16;
final int SCALE = 8;
float t = 0;
int[] P_Handleft = new int[2];
int[] P_Handright = new int[2];
//int[] P_Tipleft = new int[2];
//int[] P_Tipright = new int[2];

//int interval = 300 * 1000;
//int time;


Fluid fluid;
KinectPV2 kinect;

void settings() {
  fullScreen(1);
  size(N*SCALE, N*SCALE, P3D);
  
  kinect = new KinectPV2(this);
    //Enables depth and Body tracking (mask image)
  kinect.enableDepthMaskImg(true);
  kinect.enableSkeletonDepthMap(true);
  
  kinect.init();
}

void setup() {
  fluid = new Fluid(0.2, 0, 0.0000001);
}

void draw() {
  background(0);
  //image(kinect.getDepthMaskImage(), 0, 0);
  fluid.step();
  fluid.renderD();
  
  ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonDepthMap();
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(0);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();
    drawJoint(joints, KinectPV2.JointType_HandLeft, P_Handleft);
    drawJoint(joints, KinectPV2.JointType_HandRight, P_Handright);
    //drawJoint(joints, KinectPV2.JointType_HandTipLeft, P_Tipleft);
    //drawJoint(joints, KinectPV2.JointType_HandTipRight, P_Tipright);
    }
  }

  //fluid.renderV();
  //fluid.fadeD();
  //image(kinect.getDepthMaskImage(), 0, 0);
  fill(255);
  //text(frameRate, 50, 50);
}

int[] drawJoint(KJoint[] joints, int jointType, int[] P_XY) {
  int X = N*SCALE - 2*floor(joints[jointType].getX());
  int Y = 2*floor(joints[jointType].getY());
  fluid.addDensity(X/SCALE, Y/SCALE, 700);
  float amtX = X - P_XY[0];
  float amtY = Y - P_XY[1];
  fluid.addVelocity(X/SCALE, Y/SCALE, amtX, amtY);
  P_XY[0] = X;
  P_XY[1] = Y;
  return P_XY;
}

Shader "Custom/AnaglyphShader" {
Properties {
   _LeftTex ("Left (RGB)", RECT) = "white" {}
   _RightTex ("Right (RGB)", RECT) = "white" {}
}

SubShader {
   Pass {
      ZTest Always Cull Off ZWrite Off
      Fog { Mode off }

      CGPROGRAM
	 #pragma vertex vert_img
      #pragma fragment frag
      #pragma fragmentoption ARB_precision_hint_fastest
      #include "UnityCG.cginc"
      
      uniform sampler2D _LeftTex;
      uniform sampler2D _RightTex;
      
      
      half4 frag (v2f_img i) : COLOR
      {
         float r,g,b;
         float4 texL = tex2D(_LeftTex, i.uv);
         float4 texR = tex2D(_RightTex, i.uv);
         float4 texRGB;
        r = texL.r;
        g = texR.g;
        b = texR.b;
        
         
         texRGB = float4(r,g,b,1);
         return texRGB;
      }
      ENDCG
   }
}   
   Fallback off
} 

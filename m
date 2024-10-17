Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2C39A1758
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2024 02:55:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53D77385623
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2024 20:55:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729126531; bh=TdGPDKw9YP2o8Zj7iv0OcNCtuXBJJCVQt+QfPDOyBx4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LBqSCvdwJ55mC4TM/7XTBSMs901VPQ1FvoqxpfOqRT9d0aeRX/v+MNKZclMNbgN3G
	 ytHfVbosm29EKp3/NJyR9TPu14TV7KoMu0Tb5XaCickfKq6W/L96wwU1omOzP0odxA
	 gAbAfnwj6f2jfn/EWSg4aS5sLmPj2GmkCq1904AkWk58CqPuh/R3JZjczvA/roRqVA
	 FktRxbImqWxc2tMRhe7t0WYueniLD5x28/i+IH2Cr5IaEztW7p6ZFdOKVxa4PKcWBZ
	 O/GgoO9n527O8EtOsyYw1BEyAw6rC0bwAVhoLyC/OODrQVrnLULI9Y2o/mfI5CyKOr
	 Qc9YHPqVHdZsg==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id B205738558A
	for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2024 20:55:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="lBxq3ZBA";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6e3881042dcso4459537b3.0
        for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2024 17:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1729126511; x=1729731311; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yRhVjn7dDkmAggz+4jwBKEHLL88Jd9plWv0jnNgktlg=;
        b=lBxq3ZBA65l/CqMLv8NOCKU3X4Ai/3EewgHHJDvtm3VmDoGfOn4WW/UJhM00HuXz9+
         rNoZ1BA7nszu+EqH5ZJ8bo2qtjxJAE14Wm+BI2YIoEHG0UvYNzWNIXrVi2xB83yA6bqN
         7Lr1z07XZSjkcy8svBjPlT4q8ME83cBuIwKpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729126511; x=1729731311;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yRhVjn7dDkmAggz+4jwBKEHLL88Jd9plWv0jnNgktlg=;
        b=OlOTVr8gHteT4mM+C0fE82Cfp3k1XxQUrZFlg/VG5VRuGAkJOBKQazv3MjRDzadOTt
         /znF3coLvj19ECHlaFr17MtPsqvE+rKv5mUzjUr/VWibFWCUvi6jxOMjv/UwXcw8oBCW
         AfmSzrw/KJvJnGBuLBufZu7EJufhzQZFLWKljBLEd7YPQstIf37ElW+HBueCuNLPbhwh
         Baw8UbL89Qn3YpP6SHOHAXVZjXps+7tUJIh6g/PZufxGyfPGXHmidtndZmvT8rVCezrc
         4xfYArQ+dQ3dlu1D+z5Kwheu4ZtDRtEjpsnxJ6MyCBki0D3tnJps/g0HXXwVC5wYWNmS
         OQmg==
X-Gm-Message-State: AOJu0Yx81pmCaLDgpcv4q3GzEx7Es4Q3Pln/TCMtdz1m6nb8mApy7XuJ
	j6Z80A3QbFG90PbQL3LTPMYWwUHSsITKkOM0Lmxt6VyYxLr6h2JiU2pVugIwAAbeAmC5HavRHiy
	kjQpzmjW6JGh0DQJUgxJ7tIzkH/j7xCUos2n0J4xt0pA3MXXcLVQ=
X-Google-Smtp-Source: AGHT+IHFVAdfQawbJiGpIU16xd1xCiaOScEzbvfUCtnE7a9VQ9foPQvk6k/HJ6LRCjQJb3cgc5fOmYG47+AAB2AGWnQ=
X-Received: by 2002:a05:690c:f93:b0:6e2:ac0a:890e with SMTP id
 00721157ae682-6e364107e53mr141265647b3.6.1729126510979; Wed, 16 Oct 2024
 17:55:10 -0700 (PDT)
MIME-Version: 1.0
From: Ekin Su Sacin <esacin@umass.edu>
Date: Wed, 16 Oct 2024 20:55:00 -0400
Message-ID: <CANwDeJY9B9Cn7rGQ=BTA3MjO=k94aPnL7PAZRRizX-OR0OwRNg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FH4PRNEFZWQEBQJAT3XCZ7SDP4FXFYTQ
X-Message-ID-Hash: FH4PRNEFZWQEBQJAT3XCZ7SDP4FXFYTQ
X-MailFrom: esacin@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Assistance with RFNoC Keep-One-In-N Block For Radiometer Application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FH4PRNEFZWQEBQJAT3XCZ7SDP4FXFYTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0479294555867728070=="

--===============0479294555867728070==
Content-Type: multipart/alternative; boundary="0000000000007587290624a1a3e0"

--0000000000007587290624a1a3e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am working on modifying rfnoc_keep_one_in_n.v code for a Dicke radiometer
application. My goal is to generate a Dicke clock for different modes and
to obtain the accumulated power of the incoming signal over half of the
Dicke cycle. I am using this block to produce a Dicke clock from
front-panel GPIO and using the n register to define different modes in
addition to defining the number of kept samples. These modes determine
which GPIO pins will be active. Additionally, I use the complex_to_magsq
module to compute the power of the incoming signal. I have verified the
Dicke clock output from GPIO using an oscilloscope. It responds correctly
to changes in the n value at the application level.

When I try to sample a sinusoidal wave, it produces the sawtooth pattern
for kept samples which looks correct. Initially, I thought that by
adjusting the n value and data rate at the application level to cover half
of the Dicke cycle, I could obtain accumulated results over this period,
which would match the last value of the sawtooth. However, this approach
isn't working as expected. I am using a 200 MHz clock, resulting in a
half-Dicke period of 327.68 =C2=B5s. To match this, I set the data rate to
ensure an integer number of samples per Dicke period, such as 25 MSPS. I
ran the following command for testing: ./rfnoc_rx_to_file --args
addr=3D192.168.10.2 --freq 28e6 --nsamps 0 --rate 25e6 --block-id KeepOneIn=
N
--n_value 8192,and for testing, I applied a 27 MHz sinusoidal input.
However, this setup yields inconsistent results. When I change the rate to
20 MSPS or other values, the results seem more accurate. I also
experimented with different n values like 4, 20, and 40, which produced
sawtooth patterns with varying periods as expected. However, my primary
goal is to gather data specifically at the end of each half-Dicke cycle
rather than picking samples during the cycle.

I suspect there may be a synchronization issue between the block and the
Dicke clock. Could you provide suggestions based on my objectives, or is
there an alternative approach that might be more effective than adjusting
the n value? I am also adding modified parts of the code below.

Thank you in advance for your support. I look forward to your response.

Best regards,

Ekin


In output state machine, sample_reg[31:16]   <=3D v1o[31:16];
                                        sample_reg[15:0]    <=3D v2o[31:16]=
;

.......

always @(posedge clk) begin
if (reset) begin
   k <=3D 0;
         dicke_1 <=3D 0;
         dicke_ch <=3D 0;
         ctrl_cal_1 <=3D 0;
         ctrl_ref_1 <=3D 0;
         ctrl_v_1 <=3D 0;
         v1o <=3D 32'd0;
         v2o <=3D 32'd0;
end

else if (~reset) begin
k <=3D k+1;
if (k =3D=3D 65536) begin // yields dicke freq =3D 1.53 kHz
      k <=3D 0;
      dicke_1 <=3D ~dicke_1;
      dicke_ch <=3D 1;
end

if (dicke_ch =3D=3D 1) begin  // if dicke clock phase changed
  if (n =3D=3D 4) begin // Ref-V
   if (~dicke_1) begin
      ctrl_cal_1 <=3D 0;
      ctrl_ref_1 <=3D 1;
      ctrl_v_1 <=3D 0;
   end else begin
      ctrl_cal_1 <=3D 0;
      ctrl_ref_1 <=3D 0;
      ctrl_v_1 <=3D 1;
   end
 end
 else begin  // Cal-Ref (mode 1 for anything else)
   if (~dicke_1) begin
      ctrl_cal_1 <=3D 1;
      ctrl_ref_1 <=3D 0;
      ctrl_v_1 <=3D 0;
   end else begin
      ctrl_cal_1 <=3D 0;
      ctrl_ref_1 <=3D 1;
      ctrl_v_1 <=3D 0;
   end
 end
 dicke_ch <=3D 0;   v1o <=3D 32'd0;  v2o <=3D 32'd0;
end
                 else if (dicke_ch=3D=3D0) begin
                      if (s_axis_tvalid && s_axis_tready && o_tvalid) begin
                          if (dicke_1 =3D=3D 0) begin
                               v1o <=3D v1o + o_tdata;
                           end
                           else if (dicke_1 =3D=3D 1) begin
                               v2o <=3D v2o + o_tdata;
                           end
                      end
        end
end
   end

--0000000000007587290624a1a3e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div><p>I am working on mo=
difying rfnoc_keep_one_in_n.v code for a Dicke radiometer application. My g=
oal is to generate a Dicke clock for different modes and to obtain the accu=
mulated power of the incoming signal over half of the Dicke cycle. I am usi=
ng this block to produce a Dicke clock from front-panel GPIO and using the =
n register to define different modes in addition to defining the number of =
kept samples. These modes determine which GPIO pins will be active. Additio=
nally, I use the complex_to_magsq module to compute the power of the incomi=
ng signal. I have verified the Dicke clock output from GPIO using an oscill=
oscope. It responds correctly to changes in the n value at the application =
level.=C2=A0</p><p>When I try to sample a sinusoidal wave, it produces the =
sawtooth pattern for kept samples which looks correct. Initially, I thought=
 that by adjusting the n value and data rate at the application level to co=
ver half of the Dicke cycle, I could obtain accumulated results over this p=
eriod, which would match the last value of the sawtooth. However, this appr=
oach isn&#39;t working as expected. I am using a 200 MHz clock, resulting i=
n a half-Dicke period of 327.68 =C2=B5s. To match this, I set the data rate=
 to ensure an integer number of samples per Dicke period, such as 25 MSPS. =
I ran the following command for testing: ./rfnoc_rx_to_file --args addr=3D1=
92.168.10.2 --freq 28e6 --nsamps 0 --rate 25e6 --block-id KeepOneInN --n_va=
lue 8192,and for testing, I applied a 27 MHz sinusoidal input. However, thi=
s setup yields inconsistent results. When I change the rate to 20 MSPS or o=
ther values, the results seem more accurate. I also experimented with diffe=
rent n values like 4, 20, and 40, which produced sawtooth patterns with var=
ying periods as expected. However, my primary goal is to gather data specif=
ically at the end of each half-Dicke cycle rather than picking samples duri=
ng the cycle.</p><p>I suspect there may be a synchronization issue between =
the block and the Dicke clock. Could you provide suggestions based on my ob=
jectives, or is there an alternative approach that might be more effective =
than adjusting the n value? I am also adding modified parts of the code bel=
ow. <br></p><p>Thank you in advance for your support. I look forward to you=
r response.</p><p>Best regards,</p><p>Ekin</p><p><br></p><p></p><p>In outpu=
t state machine, sample_reg[31:16] =C2=A0 &lt;=3D v1o[31:16];<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample_reg[15:0] =C2=A0 =C2=A0&lt;=
=3D v2o[31:16];</p><p>.......<br></p><p>always @(posedge clk) begin<br>	if =
(reset) begin<br>	 =C2=A0 =C2=A0k &lt;=3D 0;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0 dicke_1 &lt;=3D 0;<br>=C2=A0 =C2=A0 =C2=A0 	 =C2=A0 =C2=A0dicke_ch &=
lt;=3D 0;<br>=C2=A0 =C2=A0 =C2=A0 	 =C2=A0 =C2=A0ctrl_cal_1 &lt;=3D 0;<br>=
=C2=A0 =C2=A0 =C2=A0 	 =C2=A0 =C2=A0ctrl_ref_1 &lt;=3D 0;<br>=C2=A0 =C2=A0 =
=C2=A0 	 =C2=A0 =C2=A0ctrl_v_1 &lt;=3D 0;<br>=C2=A0 =C2=A0 =C2=A0 	 =C2=A0 =
=C2=A0v1o &lt;=3D 32&#39;d0;<br>=C2=A0 =C2=A0 =C2=A0 	 =C2=A0 =C2=A0v2o &lt=
;=3D 32&#39;d0;<br>	end <br>		<br>	else if (~reset) begin<br>		k &lt;=3D k+=
1;<br>		if (k =3D=3D 65536) begin // yields dicke freq =3D 1.53 kHz<br>	 =
=C2=A0 =C2=A0 =C2=A0		k &lt;=3D 0; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
 <br>	 =C2=A0 =C2=A0 =C2=A0		dicke_1 &lt;=3D ~dicke_1; =C2=A0=C2=A0 <br>	 =
=C2=A0 =C2=A0 =C2=A0		dicke_ch &lt;=3D 1; =C2=A0=C2=A0 <br>		end<br><br>		i=
f (dicke_ch =3D=3D 1) begin =C2=A0// if dicke clock phase changed<br>=C2=A0=
 if (n =3D=3D 4) begin // Ref-V<br>		 =C2=A0 =C2=A0if (~dicke_1) begin<br>	=
	 =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>		 =C2=A0 =C2=A0 =C2=A0 ctr=
l_ref_1 &lt;=3D 1;<br>		 =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0; =C2=A0 =
=C2=A0 =C2=A0<br>		 =C2=A0 =C2=A0end else begin<br>		 =C2=A0 =C2=A0 =C2=A0 =
ctrl_cal_1 &lt;=3D 0;<br>		 =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 0;<br>	=
	 =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 1;<br>		 =C2=A0 =C2=A0end <br>		 =
=C2=A0end<br>		 =C2=A0else begin =C2=A0// Cal-Ref (mode 1 for anything else=
)<br>		 =C2=A0 =C2=A0if (~dicke_1) begin<br>		 =C2=A0 =C2=A0 =C2=A0 ctrl_ca=
l_1 &lt;=3D 1;<br>		 =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 0;<br>		 =C2=
=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0; =C2=A0 =C2=A0 =C2=A0<br>		 =C2=A0 =C2=
=A0end else begin<br>		 =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>		 =
=C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 1;<br>		 =C2=A0 =C2=A0 =C2=A0 ctrl_=
v_1 &lt;=3D 0;<br>		 =C2=A0 =C2=A0end <br>		 =C2=A0end <br>		 =C2=A0dicke_c=
h &lt;=3D 0; =C2=A0 v1o &lt;=3D 32&#39;d0;=C2=A0 v2o &lt;=3D 32&#39;d0;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>		 end <br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (dicke_ch=3D=3D0) b=
egin<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (s_axis_tvalid &amp;&amp; s_axis_tready &amp;&amp; o_tvalid) =
begin<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0	 =C2=A0 if (dicke_1 =3D=3D 0) begin<br>			 =C2=A0 =C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 v1o &lt;=3D v1o + o_tdata;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0end <br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0else if (dicke_1 =3D=3D 1) begin<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0v2o &lt;=3D v2o + o_tdata;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0end<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 end =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>=
	 =C2=A0 =C2=A0 =C2=A0 =C2=A0 end =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 <br>	end<br>=C2=A0 =C2=A0end =C2=A0=C2=A0 <br></p></d=
iv></div>

--0000000000007587290624a1a3e0--

--===============0479294555867728070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0479294555867728070==--

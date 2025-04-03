Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2963EA7A005
	for <lists+usrp-users@lfdr.de>; Thu,  3 Apr 2025 11:28:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E53B2385CA9
	for <lists+usrp-users@lfdr.de>; Thu,  3 Apr 2025 05:28:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743672521; bh=P8eE7BXW3OyfdnPEsbB6tW5oVhuIB7XtSGoQ5itaiA8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BsRxt4jkzJtLxVCOzTskpnPIJ89An3zrq/obOspF6oQEbwB5AbS0mZejU42t4S+68
	 /a8XT92it4wAZddT37X9mfhpR5rJtGIGlT5sTm+gMPvRAwyCGnhWy4X20o6X9uU+BJ
	 qyHIrwurCInY+fQDpDLJv11dIGhVgJbiU7UlgR1PDJbZxKv2/xy4mBatsB9tRV06tp
	 Lxwoe+sgADGxeqNxnKW8burqCc3o6nYRdzia53KjntF/L3HLtFqY2s0tD9P207psa0
	 E1Fak2mKRcQ/6KdLCrmQWxZQ7Mtl3IQ83mjlIz3JBB5s04Vk+WinajUiNt8HWlptD7
	 kvFaaMRMwHzZw==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A58A385C4A
	for <usrp-users@lists.ettus.com>; Thu,  3 Apr 2025 05:27:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EEF1WN/d";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-47663aeff1bso5871881cf.0
        for <usrp-users@lists.ettus.com>; Thu, 03 Apr 2025 02:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743672467; x=1744277267; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5kmynLkE/nF/1nIn57emF8s3+8Avp74hNj/UK5ziP0E=;
        b=EEF1WN/dOa0krk9oq4JUBMEI9bGWjzQdIQhAyRM3cJnYXic8ADHekQjU6ZXURigpqf
         KqJMdGcxxYdHfMCPzKBckI7oc7JrQXp//s3elLNAd1NqOtNMONb45jANVjn7X4+68izX
         pvWZX3kIMCTAMxRKi9KrxctZwFjuua6rTRL4IDvZCRqOS6griW3DL27yIa648aQae2Eb
         T0OdEH8V/kI5rHI95SfBOYuf5rk4AmYWDJrzjsgK55/TguK/Wpb0COeiDtSumLowb0di
         dLk2/x004bBLpJrR6ufCCmsDgY8jFjaQFP+vLC6v+y6mVZJYRSv19yUfp5BQ+qwKGmSz
         RYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743672467; x=1744277267;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5kmynLkE/nF/1nIn57emF8s3+8Avp74hNj/UK5ziP0E=;
        b=qwA6Ebq5fz4vXx+mhWztfSRvehbrAjx8NqAKzdWh3b5/U2i0wypwZUokhnjcEWfcZw
         MCmap0+Yruh0pzJbl7INQhzCtIh75KZoXY4vOBMAaPZNWQ70x80+3RLMWFmZgg/dctjn
         /8ZV/FX8Jjq9Q7t21K/NWbVTzcJ7n0MqM16usm1bec5PIeIbju9a9oJM2XFQlhJRHcxS
         /wuhh4vim0HJCgagsvc0i9WQd2/2fKGOzH6Qix2o/xv07X1qeogu4nUTjrza4wDy03v7
         E20i/Qa0tbGIdDqYFoPQyHW6U2ZZGt6G2CmKdyapCElWkS47eURr7Au9o/a+mgWaJ/FK
         oVQw==
X-Gm-Message-State: AOJu0YxuA6lBu9VW/nPHaIpzLmEKa8dAPrwGESptGVX2KIS/sI+RWE2q
	h02/EFNGA1zr1mA2zQUMeGParDGemA8Ahv1LjgZzaugB/uGpTTIVrqPN7Xv/ki7EwxzXsS+7HsV
	r5m+isduoQMQvhqd4xAVhBnXAW41af3oj
X-Gm-Gg: ASbGnct6nv8Jvd2qWPJKXgPiueGc82Ay5kk6bx7+saRx38mUazWJp7CnFS1duqFmo7K
	8YV4u9bTtKSt8hV0BLXJ/p2KR/pBgJpDIVqSmFMJDupa6ObjfCvtrPQ6rkDfSUyCPPc75+yGclb
	TJVWxXf3NMRk9oj4PqE0QI/G2H
X-Google-Smtp-Source: AGHT+IFYVeKcsKOfaOGgAGea3zE+CkO6C80Lzia2myw59Qcz9c1QIv71Xu7jBBeWuXfck710KYSBnwPOMDhcrcMyfqI=
X-Received: by 2002:a05:622a:594:b0:476:980c:10a9 with SMTP id
 d75a77b69052e-47909f79ed2mr90639481cf.21.1743672466692; Thu, 03 Apr 2025
 02:27:46 -0700 (PDT)
MIME-Version: 1.0
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Thu, 3 Apr 2025 11:27:35 +0200
X-Gm-Features: AQ5f1Jrviu4nYtAiPYtGxa_1j_CnwIwac5GgATeTv2H1oH4qkmnghr9S7wrI9Fs
Message-ID: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BKM2HRJWSTDVFJTA7K5NFQ2SGAP7CHFM
X-Message-ID-Hash: BKM2HRJWSTDVFJTA7K5NFQ2SGAP7CHFM
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKM2HRJWSTDVFJTA7K5NFQ2SGAP7CHFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4798653887826024324=="

--===============4798653887826024324==
Content-Type: multipart/alternative; boundary="000000000000fb646a0631dc6106"

--000000000000fb646a0631dc6106
Content-Type: text/plain; charset="UTF-8"

Hello



I've recently run the uhd_power_cal.py script to calibrate the RX paths of
a B200mini using a calibrated signal generator.

It generated two files, saved at /home/username/.local/share/uhd/cal:



- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal

- b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal



Using python, I have the following code:

print(f"RX info: {usrp.get_usrp_rx_info()}")

This returns the following:

RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini',
'mboard_serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna':
'TX/RX', 'rx_id': 'Unknown (0xffff)', 'rx_ref_power_key':
'b2xxmini_pwr_rx_tx+rx', 'rx_ref_power_serial': '33ECA1A#A',
'rx_serial': '', 'rx_subdev_name': 'FE-RX1', 'rx_subdev_spec': 'A:A'}

Running the following functions return false however.

usrp.has_rx_power_reference()
uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA1A#A'):

Why? *How can I use the calibration file in python to obtain estimated
received power level at the RX side in dBm?* This is not clear in the
documentation. I would like to do this for the TX side as well.

Thanks!

References:
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34...
<https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34c>
https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afb...
<https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afbfb7d9>
https://files.ettus.com/manual/page_power.html

--000000000000fb646a0631dc6106
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-lia-quilt-row gmail-lia-quilt-row-row-=
body" style=3D"box-sizing:border-box;margin-left:0px;margin-right:0px;margi=
n-top:10px;color:rgb(51,51,51);font-family:Helvetica,Arial,sans-serif;font-=
size:16px"><div class=3D"gmail-lia-quilt-column gmail-lia-quilt-column-24 g=
mail-lia-quilt-column-single gmail-lia-quilt-column-message-body" style=3D"=
box-sizing:border-box;min-height:1px;padding-left:0px;padding-right:0px;flo=
at:left;width:1442px"><div class=3D"gmail-lia-quilt-column-alley gmail-lia-=
quilt-column-alley-single" style=3D"box-sizing:border-box"><div id=3D"gmail=
-bodyDisplay" class=3D"gmail-lia-message-body gmail-lia-component-message-v=
iew-widget-body gmail-lia-component-body-signature-highlight-escalation gma=
il-lia-component-message-view-widget-body-signature-highlight-escalation" s=
tyle=3D"box-sizing:border-box;word-break:break-word;line-height:1.71429;ove=
rflow:auto;margin-bottom:10px"><div class=3D"gmail-lia-message-body-content=
" style=3D"box-sizing:border-box;word-break:break-word;line-height:1.32;mar=
gin-bottom:10px"><p style=3D"box-sizing:border-box;margin:0px;padding:0px;l=
ine-height:1.42">Hello</p><p style=3D"box-sizing:border-box;margin:0px;padd=
ing:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margi=
n:0px;padding:0px;line-height:1.42">I&#39;ve recently run the uhd_power_cal=
.py script to calibrate the RX paths of a B200mini using a calibrated signa=
l generator.</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;li=
ne-height:1.42">It generated two files, saved at /home/username/.local/shar=
e/uhd/cal:</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line=
-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;paddin=
g:0px;line-height:1.42">- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal</p><p style=3D"=
box-sizing:border-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_p=
wr_rx_tx+rx_33ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;p=
adding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;ma=
rgin:0px;padding:0px;line-height:1.42">Using python, I have the following c=
ode:</p><pre style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo=
,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:15px;padding:1=
3px;margin-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62=
,62);word-break:break-all;background-color:rgb(245,245,245);border:1px soli=
d rgb(204,204,204);border-radius:0px">print(f&quot;RX info: {usrp.get_usrp_=
rx_info()}&quot;)</pre><p style=3D"box-sizing:border-box;margin:0px;padding=
:0px;line-height:1.42">This returns the following:</p><pre style=3D"box-siz=
ing:border-box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courie=
r New&quot;,monospace;font-size:15px;padding:13px;margin-top:0px;margin-bot=
tom:13.5px;line-height:1.71429;color:rgb(62,62,62);word-break:break-all;bac=
kground-color:rgb(245,245,245);border:1px solid rgb(204,204,204);border-rad=
ius:0px">RX info: {&#39;mboard_id&#39;: &#39;B200mini&#39;, &#39;mboard_nam=
e&#39;: &#39;B200mini&#39;, &#39;mboard_serial&#39;: &#39;33ECA1A&#39;, &#3=
9;module_serial&#39;: &#39;33ECA1A&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#=
39;, &#39;rx_id&#39;: &#39;Unknown (0xffff)&#39;, &#39;rx_ref_power_key&#39=
;: &#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;rx_ref_power_serial&#39;: &#39;33E=
CA1A#A&#39;, &#39;rx_serial&#39;: &#39;&#39;, &#39;rx_subdev_name&#39;: &#3=
9;FE-RX1&#39;, &#39;rx_subdev_spec&#39;: &#39;A:A&#39;}</pre><p style=3D"bo=
x-sizing:border-box;margin:0px;padding:0px;line-height:1.42">Running the fo=
llowing functions return false however.</p><pre style=3D"box-sizing:border-=
box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;=
,monospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;=
line-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-col=
or:rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">us=
rp.has_rx_power_reference()<br style=3D"box-sizing:border-box">uhd.usrp.cal=
.database.has_cal_data(&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;33ECA1A#A&#39;=
):</pre><div style=3D"box-sizing:border-box"><div style=3D"box-sizing:borde=
r-box">Why? <b>How can I use the calibration file in python to obtain estim=
ated received power level at the RX side in dBm?</b> This is not clear in t=
he documentation. I would like to do this for the TX side as well.</div><di=
v style=3D"box-sizing:border-box">=C2=A0</div><div style=3D"box-sizing:bord=
er-box">Thanks!</div><div style=3D"box-sizing:border-box">=C2=A0</div><div =
style=3D"box-sizing:border-box">References:</div><div style=3D"box-sizing:b=
order-box"><a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1mu=
lti__usrp.html#a1dadf323c5f00ac4f93b231adc13e34c" target=3D"_blank" rel=3D"=
nofollow noopener noreferrer" style=3D"box-sizing:border-box;background-col=
or:transparent;color:rgb(4,65,35)">https://files.ettus.com/manual/classuhd_=
1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34...</a></div><d=
iv style=3D"box-sizing:border-box"><a href=3D"https://files.ettus.com/manua=
l/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afbfb7d=
9" target=3D"_blank" rel=3D"nofollow noopener noreferrer" style=3D"box-sizi=
ng:border-box;background-color:transparent;color:rgb(4,65,35)">https://file=
s.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc=
10f29cb616afb...</a></div><div style=3D"box-sizing:border-box"><a href=3D"h=
ttps://files.ettus.com/manual/page_power.html" target=3D"_blank" rel=3D"nof=
ollow noopener noreferrer" style=3D"box-sizing:border-box;background-color:=
transparent;color:rgb(4,65,35)">https://files.ettus.com/manual/page_power.h=
tml</a></div></div></div></div></div></div></div></div>

--000000000000fb646a0631dc6106--

--===============4798653887826024324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4798653887826024324==--

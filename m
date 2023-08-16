Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 631C777EBB9
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 23:27:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6538F380CE8
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 17:27:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692221224; bh=0HN86uwV6z6c5Dqjiy79kPBBkwDrmvz9rELLJwlL6Ig=;
	h=Date:References:In-Reply-To:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=navUwN/fbHnKkAsXJykP9peylY8rxMX7dDhk7i+omu/cBBl0vrv8dXPe2+AIOykIy
	 duf2KtVKxF8hmNfInlwHsJC7+wVq5p4SADkpInIw5xyDe7nAus/PcvKIQYkl8FYlpP
	 VofnYvni9RH85xwxPEjI33CeRzp8ntBF6wrzT44Cn4tGlrqJjDiQJM+85yL0IYll68
	 3IV1aLuwWijIi3DcTt2tvakkOO8eriwfQUYGfaAZz26Yu5hpYoVoQDCLvDjWFjb8mp
	 qx4BnKHa75KNlXnmOudVzQIIZgBs0FOuIie8uZ3t20mblICaEOKLicKKvOVFRk7dQZ
	 bQk1Gpv8CDZVg==
Received: from sonic314-20.consmr.mail.gq1.yahoo.com (sonic314-20.consmr.mail.gq1.yahoo.com [98.137.69.83])
	by mm2.emwd.com (Postfix) with ESMTPS id BA247380CE8
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 17:26:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="gehFpWYC";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1692221193; bh=V1pgFrv7wS6fMwmRZS1Qt1eYNqZmqp/yTi69SmHTS00=; h=From:Subject:Date:References:Cc:In-Reply-To:To:From:Subject:Reply-To; b=gehFpWYCkJUpe71DoMP2lfxccjXAZx0itUhVRLfXqz798AzNyVFfZkhCLzxSDrRabemxWR6LYZZczQDrrJmVS7IgQ643Qr4oYaWQ17C5wfK7XFtOin/fg4UPRh+RzmLaOTSSfzyeQoRRtELpLNx8Z3PvB/tZjWUgbjCaPtXtiHcIZuIfVAZOzpVsMBEqBw0kzcAy/ATApNk/mmsp/z9UxxAxZYVntZUAhfwUOpwDrwkCnyAcRUxl8GEi60AeBh9uMClLFD68lBBCrki28ULhFMS0sT5PX6B41x+VPkYJsKnMc7ifCC6y9jBcZJ+JXX3aTFgCjgKciiPNjFFSGShjxA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1692221193; bh=rnpNqzULUa9LHJad76Oo4HIk0Mja3MWsBee44xuxZEG=; h=X-Sonic-MF:From:Subject:Date:To:From:Subject; b=nnTe0NuWrqczgejKj2Bhos7nx1KaeVBD687IZ1ncFKfClBYEuhNN5JA7L1+LuE++hVhTabKWPZKaaZFyrPoPLABOVBgJ0dZfAIiNCyM7EOGejM3K4hjB9iuVlI8OpvXG5tEu5m/awffHUhMSthE+reazlWWGtXIjENRIKeno5HLBxlhbkOXheniSBpGX3egPf8fH8b/W05Y6aLlx1p4D4YY8dETmFTfZJWpnR/fHOtQ88622vE+dxNiRMsD22sbjUm5+ov0qpifQu0gsa1FuV80jDrUWosGLgnuEwzyxPWc/Kw9iKXcnx7ARfoLVe3m2oseo0wZQnMv5ev68kKkJqg==
X-YMail-OSG: kDyQn2MVM1kAEqldwfWo4F7DKSIWT1RS2S2.naHZtlee_xr7z4VQEResEcnp8pX
 ebpvhsoGwk.eU50uJAOs01FrVF5W0jzvgjGZ8FQDl6jub.Mizl9CU0JTdt1RYAcKeA2GMjOmTsfe
 h8lU71EzLXg.C7yps7VYYn6IKHRl3MVy1w51fuSbQ3MaFFJfflsPAe5ww1uAVKC2Vy_Hu4rEUjj4
 U3QSuVqShfB_4fyqLWesQK0JOghij.IfgILw_nSwsxyZs4qOy5x_NP2bw23yYXjsQEui9FBIrhob
 z6Qpj45P.dX1JmR8yR4XCQoY01ngILMsVnRQIIuvd3ZBHS8u.NmPhKcMlnXT_Og1oyGTpJ2CI4xy
 TL1XtNgfTz77SkOk4x1z6OHMkLcl3QZPvvPQviykwtLmMs7LEd.g7E53rL2HuCdxsGs.Q_FbNqND
 vBx31XP1aYlm88AUKqkzMUtu2yIZEcFea2BcFcJBNrwmfuIhAu.0_s9yE8OhI2J_b1Zzog3Xc7GV
 GrTBigI9Z4CoK0AQOBzJf_6BcVotVyXboAFEgnNsHMIvADop1Dru6pWcDW1Ph0dzTc1X4QSYCyyi
 LSM0X382ry86W43WczBp_DhWFAQZYCg1lVVwOPN9ROqOIjBuxZyrCCHep12Ww8HI5Dq2tV3peSrN
 DlJD_s69wcAawgGyZbPHWXqxUgN4oNZdCp3ZpVoFc0Thp7W3grRGzXwsXi0hh5a3JFP5ZtiGpZhf
 LVRIRTq94oy5XB6LbDgicZjZf3jdtPepROdYHn3yQC6pRQH4Ss_Y.ok7FnkqgXGs3xKHqc2op_P4
 HvsYPxBo3PvKzvto0cQiN6.FXi0zsVVuH6VCan6b10vn.1yB1WmWSVqunw6iP9HJYi3igHAswVRS
 6XzvT3ZldqvklnF8eavGCiLtB8MeZTsdHqOFo.CYPdEsebtnNH7wwpYfATQT1GkPJnZIt7MsAWIK
 VjqAmXquQMzmsj2KHH93IBsPYIjhDRnuMlXV6no9lNO3th1aYdtpozxcXBEvq5bgQ0QXC2PR0Ue7
 PCFBak4VT8.7125sDyeo68UV32Cww4EtlfYWkS7Auy1RiN_Ui1pfhg3QpNv.HJFpeNnRYb4pOuKA
 3rokDlwE0My3NXeSDnb7hnil2Rp5OufdIb8CLt_yc12quZh5uUCdVpnAjHdBeMCrE4.uMkQRNv0k
 INbu2JVG.80p_hi2TWVjy3l.9ncXSTVuJ0gr8w9NYvkOM47SQfUpI3dVtioJbVy1wDrg4J6jBs9X
 oY89R3oG_VTeoHVWnfMWAyGlvBBYmjLzl2flV007duuhkSqPTW9Yyc0Bes6AbXeDh9UHReUSfNBj
 bnUgH7gr6cV.yqguJ4B2hTAzBrlizTndvvT6K1bcgRPbYpSvJrv8ydPIDECj14hQRWAku4HBfXuh
 0QPUClG.9Z1x7Y9BMLk5ezekK8x82HzDoZ9eYlJBwEzvvirxUoDKRqu4L5ym1cKZS9Ww0seeJcpv
 oqJ8v05WdGLWojs4vr9QfDsqeJY_IYH_UY8wBdRTZNi52nRXgueUF1LVT7WW0Ot9OCqTMspRhq5u
 YhyM.F8gvP5cx5B5TBYtIMZC5a6P7Zj4pXTRMy.QMo7d1iqO55YvtrhHmbjMy4Vq50sdjqe96ldU
 gSiK.zhXqRRawfdZEQO7lBFnHozuGsf.tak6XMxqOtZ.Cw9SugdDbdJZrOGuk.UV1mfqHeTuxA1s
 L4xRj0P8j9zg20vCl1ubfwWzOwN5fJ2cM45w6H2B_G8PbYEGsP2i2tkPBBpePLOtsCfZpqBTVCzn
 h4x6tuzhhPF2QACFmiePNWGhhiYsMufwTa.nI5GNsHuoRnYCc8rRrMkJbcy5jK1J6QXv65R5WskB
 PMS51QrDJY2wLbg9jQuEOUT82E0PUL237jiF_mIjMBgJpwJ.aGLDgqtOoeOlsWFNA0.DaivLV3.n
 5m9VfC6ESPXlemtN0BWLmZ0uPWc5U3_Q.ycbLOoXggng7vuIQcipnpIXVhFZtb1P_4BeRxNdvMVe
 vCXBemdcGXAGcD4gqoPrP.5epQY1yUgU7eRpNtaa1IC08UlGwANb43OyGjURNio8zSY..zJJwPmS
 N8PNtPGFed4oSAzyvyIJl.qDHm8nigR_dwKLRPNlZquhsmZ0Kp8H_ZJYOdtc9FmFubNgdpi8Ckvo
 ogsvGnufofBVSYuwokNVx7AmUw6LF91.4ztZblxwSSl4OtNIyqmwHl8uYsdNmkpmyPWIF4IGjMMN
 Pjx9aPSwajp4QMCHV.g8te9FucvF_h6nOnKXHNMjBMcp7qDg-
X-Sonic-MF: <mr_samuels_124@yahoo.com>
X-Sonic-ID: 60ef0987-476a-4ea2-9f53-f3932080883d
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.gq1.yahoo.com with HTTP; Wed, 16 Aug 2023 21:26:33 +0000
Received: by hermes--production-ne1-7b767b77cc-ht9fv (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 35e6381c1c17e1a715d806dbab57046b;
          Wed, 16 Aug 2023 21:26:31 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Wed, 16 Aug 2023 17:26:18 -0400
Message-Id: <41A1610D-A552-4A4C-9ECD-5EE3B5E9DE6A@yahoo.com>
References: <CAFche=j2=5KpSdujE1hQdbVFhTcuSoOCbZqmPkCFrk+S_NAUGw@mail.gmail.com>
In-Reply-To: <CAFche=j2=5KpSdujE1hQdbVFhTcuSoOCbZqmPkCFrk+S_NAUGw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
X-Mailer: iPhone Mail (20G75)
Message-ID-Hash: JQMOJ6R3MQI3BI2JTH4PCRLBDAES7SCM
X-Message-ID-Hash: JQMOJ6R3MQI3BI2JTH4PCRLBDAES7SCM
X-MailFrom: mr_samuels_124@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: jmaloyan@umass.edu, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JQMOJ6R3MQI3BI2JTH4PCRLBDAES7SCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Johnny Samuels via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johnny Samuels <mr_samuels_124@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8426796561400642034=="


--===============8426796561400642034==
Content-Type: multipart/alternative; boundary=Apple-Mail-B0835D60-0F71-4B38-8E4D-20966A442D7D
Content-Transfer-Encoding: 7bit


--Apple-Mail-B0835D60-0F71-4B38-8E4D-20966A442D7D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I=E2=80=99m trying to remove myself from th=
is mailing list. Sending unsubscribe to the given email does not remove me f=
rom the list. Any suggestions?&nbsp;<br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 16, 2023, at=
 5:17 PM, Wade Fife &lt;wade.fife@ettus.com&gt; wrote:<br><br></blockquote><=
/div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><d=
iv>You are correct about=20
INGRESS_BUFF_SIZE. It's only used to buffer data that the stream endpoint re=
ceives from another endpoint (e.g., data sent from the host computer to a st=
ream endpoint).
There's no extra buffering in the sending stream endpoint. For normal RX whe=
re we stream to a host computer, the computer's memory serves as the buffer.=
</div><div><br></div><div>In your case, if you need extra buffering then I w=
ould expect that to be added to your block. You can change the FIFO sizes in=
 the NoC shell to add buffering to your block, depending on the type of NoC s=
hell you're using.<br></div><div><br></div><div>Changing the MTU on the FPGA=
 isn't well tested, so I don't recommend changing it.<br></div><div><br></di=
v><div>Is the overflow occurring in the radio? If that's the case, then you p=
robably need additional buffering on the input of your block where data's re=
ceived by the radio.<br></div><div><br></div><div>Wade<br></div><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, A=
ug 16, 2023 at 10:45=E2=80=AFAM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jm=
aloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><p>For my application, I am not collecting samples continuousl=
y. The radio block is commanded to stream continuously, but I have a custom b=
lock downstream which =E2=80=9Cgates=E2=80=9D samples in bursts that pass th=
rough. I am able to at least stream data without any overflows as long as th=
e number of samples the custom block allows is not too big, which is why I a=
m assuming its a buffer that is too small. My assumption is as long as my bu=
ffers are large enough and the total number of samples of each burst is less=
 than 10 Gb/s, samples should be able to unload onto the QSFP before the nex=
t burst of samples. This is why I increased the endpoint buffer sizes.</p><p=
>However, looking over the verilog, it seems INGRESS_BUFF_SIZE only controls=
 the buffer size of the input going into the block(before gating), and not t=
he output(after gating), which is probably why I am still seeing overflows a=
t the same exact rate even after increasing the buffer size. Is this interpr=
etation correct, and if so, is it =E2=80=9Csafe=E2=80=9D to control MTU, or w=
ill it cause other problems downstream?</p><p><br></p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-B0835D60-0F71-4B38-8E4D-20966A442D7D--

--===============8426796561400642034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8426796561400642034==--

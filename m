Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 194132D1D53
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 23:30:50 +0100 (CET)
Received: from [::1] (port=40248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmP1p-0005Lm-8D; Mon, 07 Dec 2020 17:30:45 -0500
Received: from sonic308-55.consmr.mail.gq1.yahoo.com ([98.137.68.31]:35547)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bassecho21@yahoo.com>)
 id 1kmP1l-0005Ep-CA
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 17:30:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1607380199; bh=iE6fZlXD6lIkha83WK6xDS1tH7tPqjlFWfFkte9joJk=;
 h=From:Subject:Date:References:Cc:In-Reply-To:To:From:Subject;
 b=b6sbXOTojtb2b7Z/okecH/MeJ+GBvEZBkROmrjW0zNgurYPKI2w9eQQRFE1P9znLRw+vi2Sv2BXaYzsE0NHU3IHS2iGDc639CBjLh50hgS9kI0/j643YW6tFlCExd6WFLIf9uj+lV46FP0SKrWr7PI8CCh5VLF1cgo1KWZrRUiRhAdJzPrlIjw6fTJ0AKSqe7azvhYOcUVOu3SngYKLuO92TH9crYVM9Bfar/kr2WVDsZjlflg2wCYJMI29NefpHKKuAMVmh1zteVlznG/ikMZgNIYGBOlF7Tthnj22aTAyQ/lAkGk+QVgeKzq+oPshwC2cDSboh+de1CbmyvJw9ug==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1607380199; bh=hWWEfsCU9qBAIPwLXW/Cw1R5DJBGzNCqEyM9JzTDh4v=;
 h=From:Subject:Date:To:From:Subject;
 b=bu7qyxy8ds9wx7Ps/NC739tLzCYQzY6aUweB1EMeKDD4lr8q3tbNYkRTfZ+woJrbGE6TX+eQEEO7ufIJ5wE1i7hBWAO7IN+OwO5OGXrWlzxySPp3DdyIrZat/guLVaM5vPnEBi/6I/t/2uHlDaN/afM+9zcNly+LTymzjIuvTeN17TS6PbM639ZOukvURT5klkvRYlxfH6SCYDFadU/Da/tRKbQyvxi67QMFgsnSqGfBP4BEuj+op3z0vGaHUBaaoElkR6GtPn4fn1t9WI6/cbP6vIXCu4MHjVuoMAHby2/Fpky0ko6BY9V6lk6iFg5vhnVcIJlvb5WAQAuilfPvqw==
X-YMail-OSG: bXdcshoVM1kaVJnF_B_HyGgFuJfGbePeyIPocN0D5M48y4AZXY5l6nw0vHVg34U
 yHloADg7qa2w3nn_eyvjd8xkFfUil.3szffR6goh3ll7VHOlaOcFdWlM_sjjyp3fZRHeOM_4Msz9
 URXw7LQru3lM6HcYzJOvSc5D8TA9kxXcxhQthg87zR5qx9sQl2Kg_WKIl6eklX4oH32gzU7OuVO7
 9wi56kRk8Ug6RZRYzM9joRsSD7G492WUxKnMZMY9h1itV5j28v_TyG9r2SJPR44PnOumh0lH_4zC
 6ynO.mec3tB4IfDX42gNJzuv4DDLpTs2g9jVWpVhbkyyCMGFTZaZGZEuGdizmEZHi1Fa5pSaRk0G
 OYRlQW1DmkolIgKe019.xP2kSSAAV4kKUpUm.ZDrtGly8v3pUo2h98X7P8wCuXuoflDPgLUzc_mg
 io5WkROt41FyJY6zx5XVmyXqVWMTc07a2OiRFfEUmgI1vlgPkXxfkOIkEVwdD5WVAMhXKvjhPUjj
 TtUD1gGi7m8EClQcoVO5t3zdaU_VBUbaV5SwHSYM47CHLkJW3NhcWYYThUgeLKGpEUmrXFVn0vuK
 nvXDR1eumbpZb7klc.A5UMyQSU9qzjyNtg5mj_DV4OHFOHUb0zxTsphx50DEF38P3ilD2W.baWcN
 QEwak7lLgxYBPTP_m8nClKKwIfuVk1Wg6rIbBbzRkpWSc03yrG3wQvOHAIKBdUV7ERH7fQxFb_yH
 jRdiS0H5WPGAo0yEvBQ.JJxM7930zuBGIk6TnlD8sF5gdQw0KdnZ9WRagShVnw1suyxefeCY8vRI
 fz4TWaLeFq2U6DB6Np7UH_tRvZWZbxSVxZBZsUoDx_46HsXuM4lEUPu9aWA9FAHnDtaZMeVSyt8W
 .dYUMaLKuL_3iubJanPxhGrWQxKwVC6IfOaT3FG1hVW8J_9BCcULmKLP3Lw1OPIxDL2Xf3JNfPne
 eJZpv4WlXiQxBH92EorOU_BH.IkgEbLlwfAZivDksVVjCuOOdsGXmiu7jwH4C2K36w8mS1zWmTOa
 ZNUTa0fZX2DQOoMMGWHzr8HRP10oYx9UDsxZpF.jNpBJ1ywJDmwoNgQuyHjSYs1Cg0M_PJdyaH_V
 kY2.R8ZXv3aaTkV52sqh22Y2l_Y1iDtXUBmee482HKJ4PsNe4xt89FT1HoDgKWCI5AGau8yLgciW
 BSZifyraINfw4jvQlY3bJTc65I.1HY8N29WNlRH7ySj17GBD0WnQPb6f9EMjnEiqQtcd.wJp4xlx
 WWKc3W1bkgInx3VLURsHyADRc2d08xB_6u0Y0CPzMWOBPCEC_VxKYP0YB73XpaXU.qD5rsr0T3_9
 lUF36uiieuVmLWsA95H5r2oPZLSV.myzYcsln04zN2i0Z8RYnyDhKJjcTjLlsMHKfxo8ZQitjCBK
 c_CrOFPJeAj1xe2JQIh8UubEB2O0Mrg.bSx96XhzjQOnpWcsFpiuSqpGkMJUdcjT2e3nT3utgCvJ
 Jo.7KfQ67gf5kmvdwoHQxmDPxCg0EsqWW57TW.bZMtDk76zR4BRUoqvNMttb0PHjiK_KpeA5.sG.
 AtZDu12kVx5j6L_DovQ2vA5_rbJ7XuFCzhG1Nlky5M.u.PaeAxE0Y6czdDOr3Y4L8fL4CoqA4GXq
 ztjdvhk7fL.saVcsQelBpSHfDrKcAKSgasqdaJrr56duTWq4i6Y9Zi5Ny66yVbWBbOuJPymeWIsJ
 .1H4.qWt_YbCkl2S.tlk7TTzF_Sv5aKdJsofXHomIV1mEoeBxGF3zxQenu53T9dBd18dAtlDQeBq
 9YH7dltuqhwZkfAhdfEqUW6aoqDkAsdGusorB9DZLfhPLXUCdgYzFzcOGZ.r_Wg73Xhq1bCjTRgl
 iY1KHyH6Q7dSTH2d9ZFTnF3NX58la1RHUKTDTWXi4mzB2NcVJcvXPN3vrG3QqeZ8x14KfTSI8.sr
 6VPgpTJsOiz.BW.TDNh0cudYifDgiDQOXm.rZ8kc9CpKitICXYThfe022IwdxEol0.4cuCpTQ0uZ
 iSAjEKcZxccfeKgWzrxE_t4I7hiWh7jUshKW83dz4g8mZgU4dPrk6PArO0UABfaJ3Dq7fzNChCSf
 vJQ_EjPbHTj_RbdWwewi5xiCe4jlUJmJriBt_W9oLI_I31SLTwGUw6AxX2glgN.9.js.JuaB9Fkf
 WaQJ2S8nK7bkvhbTpyZ5w1iBYqsi1hJjJOL4h3qioCz9T5AmtTCncxQAXjcmQfhDm.J_c6nCZrHE
 3WyJP0Bz_wCavUFj9ocBg9WMZDNjZu04U51M5AEp2NuCBi2fcclg0qrUdFtC.PIGlMyRU93e33a6
 EW7zxFRaUMA3jsTEXK0YaBBtYW7PetA_LI6vU.FiNy7266P8YV6TEfwIUKM.bAcRq3u.MxWbXqNx
 rrz8WyUm0ywfGGAb6BZ5VwvrCHj.KwaABROVb9iNcK4JBhrFMu6_txEkYRn7jcU2.aDxjBE3dPGi
 mflp3hVhVpy2kkEinz.1xpI4s9cGW71gNGHbs7ToifLW3PQMSp95EUJAfo8zstLtggQ_J.ShFdI8
 g6.InsjfS9RFvhQYgy5czl.hYd5Yn7FCyzOAgOq5xuAY-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.gq1.yahoo.com with HTTP; Mon, 7 Dec 2020 22:29:59 +0000
Received: by smtp415.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 03822620c488c864fd202d77a51db6e0; 
 Mon, 07 Dec 2020 22:29:59 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 7 Dec 2020 14:29:58 -0800
Message-Id: <4948EA29-AD3C-4ACE-8E40-B262B20319FA@yahoo.com>
References: <988BF083-D469-4DFB-BDDB-68CF5C4873E0@gmail.com>
Cc: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
In-Reply-To: <988BF083-D469-4DFB-BDDB-68CF5C4873E0@gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] USRP B200 Function Question
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mark McAllister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark McAllister <bassecho21@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6886869611947219379=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============6886869611947219379==
Content-Type: multipart/alternative; boundary=Apple-Mail-879F6ADD-8D8F-4B02-8306-D51CB1E95CAF
Content-Transfer-Encoding: 7bit
Content-Length: 6473


--Apple-Mail-879F6ADD-8D8F-4B02-8306-D51CB1E95CAF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hmmm. It seems that using the B2xx series would cause us to make serious cha=
nges to a system that none of our current members have a good handle on how t=
o adjust.=20

Does anyone happen to have any suggestions for a proper ethernet compatible U=
SRP that could act as a substitute for an N210 operating as a local oscillat=
or?

Pardon my ignorance with the topic, its not exactly my area of expertise.=20=


Mark McAllister

Sent from my iPhone

> On Dec 7, 2020, at 11:21 AM, Marcus D Leech <patchvonbraun@gmail.com> wrot=
e:
>=20
> =EF=BB=BFSimilarly it=E2=80=99s easy to get B2xx working with a super chea=
p SBC like the rPi boards or Odroids etc.=20
>=20
> Sent from my iPhone
>=20
>>> On Dec 7, 2020, at 2:16 PM, Rob Kossler via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>>>=20
>> =EF=BB=BF
>> Mark,
>> Just this past Friday, I had success controlling a B200mini directly from=
 an N310 using the USB2 port on the N310.  Such a use case limits you to USB=
2 streaming for the B2xx and it also hogs CPU cycles from the N310.  Let me k=
now if this is of interest to you I can can provide more info.
>> Rob
>>=20
>>> On Mon, Dec 7, 2020 at 1:56 PM Mark McAllister via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>>> My senior design team at California State University Northridge is curre=
nt using a USRP N210 as a  local oscillator for a smart antenna array.=20
>>>=20
>>> We're considering purchasing something from the B200 series in order to r=
eplace it since we are current borrowing our N210.=20
>>>=20
>>> Our concern is that the B200 specifies the use of USB 3.0 for connecting=
 to a host computer, and we are currently connecting both an N210 and N310 t=
o a router which connects all signals to a host computer.
>>>=20
>>> My main question is whether or not the B200 series will run properly usi=
ng a USB to Ethernet adapter or if the device MUST be connected directly to t=
he host computer via USB.=20
>>>=20
>>> Thank you for your time,=20
>>> Mark McAllister
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-879F6ADD-8D8F-4B02-8306-D51CB1E95CAF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hmmm. It seems that using the B2xx series w=
ould cause us to make serious changes to a system that none of our current m=
embers have a good handle on how to adjust.&nbsp;<div><br></div><div>Does an=
yone happen to have any suggestions for a proper ethernet compatible USRP th=
at could act as a substitute for an N210 operating as a local oscillator?</d=
iv><div><br></div><div>Pardon my ignorance with the topic, its not exactly m=
y area of expertise.&nbsp;</div><div><br></div><div>Mark McAllister<br><br><=
div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On Dec 7, 2020, at 11:21 AM, Marcus D Leech &lt;patchvonbraun@gm=
ail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html; c=
harset=3Dutf-8">Similarly it=E2=80=99s easy to get B2xx working with a super=
 cheap SBC like the rPi boards or Odroids etc.&nbsp;<br><br><div dir=3D"ltr"=
>Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On D=
ec 7, 2020, at 2:16 PM, Rob Kossler via USRP-users &lt;usrp-users@lists.ettu=
s.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div di=
r=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Mark,<div>Just this past Friday, I had s=
uccess controlling a B200mini directly from an N310 using the USB2 port on t=
he N310.&nbsp; Such a use case limits you to USB2 streaming for the B2xx and=
 it also hogs CPU cycles from the N310.&nbsp; Let me know if this is of inte=
rest to you I can can provide more info.</div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 7, 20=
20 at 1:56 PM Mark McAllister via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-family:&q=
uot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div dir=
=3D"ltr">My senior design team at California State University Northridge is c=
urrent using a USRP N210 as a&nbsp; local oscillator for a smart antenna arr=
ay. <br><br><div>We're considering purchasing something from the B200 series=
 in order to replace it since we are current borrowing our N210. <br></div><=
div><br></div><div dir=3D"ltr">Our concern is that the B200 specifies the us=
e of USB 3.0 for connecting to a host computer, and we are currently connect=
ing both an N210 and N310 to a router which connects all signals to a host c=
omputer.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">My main questi=
on is whether or not the B200 series will run properly using a USB to Ethern=
et adapter or if the device MUST be connected directly to the host computer v=
ia USB. <br><br><div>Thank you for your time, <br></div><div dir=3D"ltr">Mar=
k McAllister<br></div></div></div></div></div>______________________________=
_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></blockquote></div></body></html>=

--Apple-Mail-879F6ADD-8D8F-4B02-8306-D51CB1E95CAF--


--===============6886869611947219379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6886869611947219379==--


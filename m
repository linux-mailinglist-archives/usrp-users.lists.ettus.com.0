Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 551D769375
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jul 2019 16:44:25 +0200 (CEST)
Received: from [::1] (port=49350 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hn2DG-0001i1-Bm; Mon, 15 Jul 2019 10:44:22 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:44576)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hn2DB-0001XE-MU
 for usrp-users@lists.ettus.com; Mon, 15 Jul 2019 10:44:17 -0400
Received: by mail-qk1-f181.google.com with SMTP id d79so11748382qke.11
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 07:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fty8REHmRSAZtX9zg62FfprSNo8KTGKuU+a2QsBY8Ng=;
 b=iSr60GlM1m+SMXA2opHwk7t4whboDAxI09kOIXSV/rrZPUZR9E/QTo6fEDpuzXMeJt
 w6Oh3O4HzjJW5siFdvwZ+bWy/snwySBj5/xJ/qeguxzlu/KPXCKl6Rq7Gr8vXD58TWqC
 TRT/UnLmJZmFBpdz/xPtGLVF+hPgFAfTDCUDGc3N3jWucTEIVuyE0BwoTpGfKe7d3gqv
 wtr51ICmvm9IpXX7tlPSYqI/ifh/LQzxRaw8LMj0cnMD/N9Va2ty3kklIX2RaqEdKqe7
 hflwXgCiSyzSHVgtP/lTbJMlrAEwG75UxPtYBme9IhsbI7d2U4V8INkA/UpeKg8QAezX
 Jpzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fty8REHmRSAZtX9zg62FfprSNo8KTGKuU+a2QsBY8Ng=;
 b=ERrdmUKqFnvl3r6HKSsxvI/E5WsFp/PmhRAobDwCdsM4aJ2XR/flnY2REvlHw8X7cZ
 o1tc7TO4XDtLV5n0G1quuLj7Wx+I45Pa3aNo3FDPKC0IUtfi/ZYZ5EPbRtFshUSQIjms
 DhV81zvtMduycPW2BotQjd+0eQo+9HatMrWBbc3P8Hp+roYN3McRQXMh8tVk2f9IZnay
 LRjcpO5zOemy75iWHvWzN9ajLDKit9cV53uvJ0Xoo6eV4HoiOjWORUqT1FHeWKRQRcg0
 GpFyl563CnbD+riPJmFtEDLClR7E962dlMDfMOaPoJZKE8pQz9V6dmAAzBqSkN80+5q6
 tCnA==
X-Gm-Message-State: APjAAAUxm/lu9N8w+uJFKPN7rOuD+pUdNwhmc1Nuxc7hy+cDIbWR9BXM
 xBe6dtCNin/PDCRmlryPvA2OJc0Y
X-Google-Smtp-Source: APXvYqw5l1OvbnqwJZnMiRNZzEoDccXajuFJV/ymw0Zp1Bd40f7tIuECQn2WC5v3dqKtL0ieF3maHA==
X-Received: by 2002:a05:620a:1017:: with SMTP id
 z23mr17395468qkj.60.1563201816971; 
 Mon, 15 Jul 2019 07:43:36 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id k25sm4650005qta.78.2019.07.15.07.43.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 07:43:36 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <MAXPR0101MB153020BA8AEC1D99B16F030790CF0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
Date: Mon, 15 Jul 2019 10:43:35 -0400
Message-Id: <1915F48D-FF15-4AD4-A124-A15ABFB9324A@gmail.com>
References: <MAXPR0101MB153020BA8AEC1D99B16F030790CF0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Subject: Re: [USRP-users] USRP E313
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8181623549134635127=="
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


--===============8181623549134635127==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-20E608F9-ABD4-4252-B938-E288B23E5126
Content-Transfer-Encoding: 7bit


--Apple-Mail-20E608F9-ABD4-4252-B938-E288B23E5126
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Not really possible except for a test mode called network mode that offers v=
ery low bandwidth

Sent from my iPhone

> On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>=20
> Hi,
>=20
>=20
>=20
> The following USRP
>=20
>=20
>=20
> https://www.ettus.com/all-products/usrp-e313/
>=20
>=20
> USRP E313 | Ettus Research, a National Instruments Brand | The leader in S=
oftware Defined Radio (SDR)
> www.ettus.com
> The USRP E313 is a rugged and weatherproof SDR designed for outdoor deploy=
ment. Containing an embedded USRP E310 inside an IP67-rated enclosure, the U=
SRP E313 provides ingress protection against dust and water with extensive t=
esting to ensure operation under demanding environmental conditions.
>=20
> has embedded processor I think. So is it possible that we don't use the em=
bedded processor and use it like USRP 2955 that is capture data using gnurad=
io API and process it in our computer as we are doing with 2955?
>=20
>=20
> Regards,
> Koyel Das                                    =20
> Senior =E2=80=93 Product Engineer
>=20
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere=
.com
>=20
>    =20
>=20
> Vehere is the proud recipient of the Fastest Growing Technology Company Aw=
ards in India & Asia since 2012!
>=20
> The content of this e-mail is confidential and intended solely for the use=
 of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged in=
 nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ group=
 companies/ subsidiaries. If you are not the addressee, or the person respon=
sible for delivering it to the addressee, any disclosure, copying, distribut=
ion or any action taken or omitted to be taken in reliance on it is prohibit=
ed and may be unlawful. If you have received this e-mail in error, please no=
tify the sender and remove this communication entirely from your system. The=
 recipient acknowledges that no guarantee or any warranty is given as to com=
pleteness and accuracy of the content of the email. The recipient further ac=
knowledges that the views contained in the email message are those of the se=
nder and may not necessarily reflect those of Vehere Interactive Pvt Ltd. Be=
fore opening and accessing the attachment please check and scan for virus. W=
ARNING: Computer viruses can be transmitted via email. The recipient should c=
heck this email and any attachments for the presence of viruses. The company=
 accepts no liability for any damage caused by any virus transmitted by this=
 email.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-20E608F9-ABD4-4252-B938-E288B23E5126
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Not really possible except for a test mode c=
alled network mode that offers very low bandwidth<br><br><div id=3D"AppleMai=
lSignature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On Jul=
 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
<br></div><blockquote type=3D"cite"><div dir=3D"ltr">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-12=
52">



<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; color=
: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
Hi,</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
The following USRP</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" target=3D"_blank" r=
el=3D"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPlnk349954" pr=
eviewremoved=3D"true">https://www.ettus.com/all-products/usrp-e313/</a></p>
<div id=3D"LPBorder_GT_15631740463640.4609731603017766" style=3D"font-family=
: Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 16px; width: 8=
85px; margin-bottom: 20px; overflow: auto;">
<table cellspacing=3D"0" id=3D"LPContainer_15631740463610.5595525113046114" r=
ole=3D"presentation" style=3D"width: 796px; margin-top: 20px; padding-top: 2=
0px; padding-bottom: 20px; border-top: 1px dotted rgb(200, 200, 200); border=
-bottom: 1px dotted rgb(200, 200, 200); overflow: auto;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td colspan=3D"1" id=3D"ImageCell_15631740463620.520711699452409" style=3D"w=
idth: 250px; padding-right: 20px;">
<div id=3D"LPImageContainer_15631740463620.7982520787803893" style=3D"displa=
y: table; width: 250px; height: 131px; margin: auto;">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" target=3D"_blank" r=
el=3D"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPImageAnchor_1=
5631740463620.5859776582035903" style=3D"text-align: center; display: table-=
cell;"><img id=3D"LPThumbnailImageID_15631740463620.0445211311981637" style=3D=
"vertical-align: bottom; display: inline-block; width: 250px; height: 131px;=
 max-width: 250px; border-width: 0px; max-height: 250px;" src=3D"https://www=
.ettus.com/wp-content/uploads/2019/01/E313_Front-Large_2-1200x630.jpg"></a><=
/div>
</td>
<td colspan=3D"2" id=3D"TextCell_15631740463630.9983429177449736" style=3D"v=
ertical-align: top; padding: 0px; position: relative;">
<div id=3D"LPRemovePreviewContainer_15631740463630.5835837580145755"></div>
<div id=3D"LPTitle_15631740463630.9487633221229601" style=3D"color: rgb(0, 1=
20, 215); font-size: 21px; font-family: wf_segoe-ui_light, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&=
quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; line-height: 21px; top: 0=
px;">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" target=3D"_blank" r=
el=3D"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPUrlAnchor_156=
31740463630.8538318560805709" style=3D"text-decoration-line: none;">USRP E31=
3 | Ettus Research, a National Instruments
 Brand | The leader in Software Defined Radio (SDR)</a></div>
<div id=3D"LPMetadata_15631740463630.9319280120041624" style=3D"color: rgb(1=
02, 102, 102); font-size: 14px; font-family: wf_segoe-ui_normal, &quot;Segoe=
 UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont=
; margin: 10px 0px 16px; line-height: 14px;">
<a href=3D"http://www.ettus.com">www.ettus.com</a></div>
<div id=3D"LPDescription_15631740463630.7323390913605139" style=3D"color: rg=
b(102, 102, 102); font-size: 14px; font-family: wf_segoe-ui_normal, &quot;Se=
goe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFo=
nt; overflow: hidden; max-height: 100px; line-height: 20px;">
The USRP E313 is a rugged and weatherproof SDR designed for outdoor deployme=
nt. Containing an embedded USRP E310 inside an IP67-rated enclosure, the USR=
P E313 provides ingress protection against dust and water with extensive tes=
ting to ensure operation under
 demanding environmental conditions.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont=
; font-size: 16px;">has embedded processor I think. So is it possible that w=
e don't use the embedded processor and use it like USRP 2955 that is capture=
 data using gnuradio&nbsp;API and process
 it in our computer as we are doing with 2955?</span>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;">
</p>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif, serif, Emoj=
iFont; font-size: 16px;"><br>
</span></div>
<br>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<div id=3D"Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:=
rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple C=
olor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sy=
mbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple C=
olor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sy=
mbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px; line-heig=
ht:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =E2=80=93 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-siz=
e:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence</f=
ont></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D=
"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" style=
=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 | =
F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" target=3D=
"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.vehere.com</a></font>=
</font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"f=
ont-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emoj=
iFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoj=
i,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-s=
ize:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-siz=
e:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p-l=
td" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP" title=3D"htt=
ps://www.linkedin.com/company/vehere-interactive-p-ltd
Ctrl+Click or tap to follow the link"><span style=3D"color:rgb(34,34,34); fo=
nt-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration=
-line:none"><img border=3D"0" alt=3D"unnamed" style=3D"width: 18pt; height: 1=
8pt; user-select: none;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp=
;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.1&a=
mp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvY=
feSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZR=
DQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw=
&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); font-size:9.5p=
t; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"htt=
ps://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noopener noreferrer" i=
d=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-famil=
y:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img border=3D=
"0" alt=3D"unnamed (1)" style=3D"width: 18pt; height: 18pt; user-select: non=
e;" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;=
view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;att=
bid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEk=
GO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&a=
mp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span=
></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,=
sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.facebook.com=
/VehereIndia/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><=
span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-s=
erif,serif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"un=
named (2)" style=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"ht=
tps://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&a=
mp;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9=
JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjw=
SBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498=
219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span st=
yle=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-f=
amily:Tahoma,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awar=
ds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,ser=
if" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use o=
f the addressee. The text of this email (including any attachments) may cont=
ain information, which is proprietary and/or confidential or privileged in n=
ature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are no=
t the addressee, or the person responsible for delivering it to the addresse=
e, any disclosure, copying, distribution or any action taken or omitted to b=
e taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error, p=
lease notify the sender and remove this communication entirely from your sys=
tem. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the vi=
ews contained in the email message are those of the sender and may not neces=
sarily reflect those of Vehere Interactive Pvt Ltd. Before opening and acces=
sing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email.=
 The recipient should check this email and any attachments for the presence o=
f viruses. The company accepts no liability for any damage caused by any vir=
us transmitted by this email.</font></font><br>
<p></p>
</div>
</div>
</div>


</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></body></htm=
l>=

--Apple-Mail-20E608F9-ABD4-4252-B938-E288B23E5126--


--===============8181623549134635127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8181623549134635127==--


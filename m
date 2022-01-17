Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F57490B44
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 16:16:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDC193852EE
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 10:16:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oGQXub7E";
	dkim-atps=neutral
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E083384FEC
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 10:15:43 -0500 (EST)
Received: by mail-wm1-f45.google.com with SMTP id v123so21107832wme.2
        for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 07:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:date:from:subject:thread-topic:in-reply-to:message-id
         :references:to;
        bh=Smbx2ZBm4jM9wzTF7Ax15QLkFaw8K7FBOHUF7dTTRFA=;
        b=oGQXub7EGsBydk/I3Tr9+inh596ASExIZbSzN3EkJBwlp2OHxdBN4LN3j84XEQ5FPT
         RxocZ9M2JfDtOtgj46By0D/e2fW0N1bRgoc0FnBINI0SSWrT2XH2TlTYgfaBfHTLOZes
         64xPx8Gxoz1SpySa9vO1yGwVJuwTo23GGqCOZpuNWQj3eqguRP2/i/x+aNzowwmPsJQy
         EX3TJzBdYRSCE4IPJ32K6GFoEgsy2sxwIU7OMM1NYdzqp7sc+21HAGg6AdxootPBbyaR
         YU6rgHjsP01yLfO36Gqoil6DXy7RB9lZAF/0Qt/OBwpuLMP9SRjLp2aTUb6r615K7pML
         WG1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:from:subject:thread-topic
         :in-reply-to:message-id:references:to;
        bh=Smbx2ZBm4jM9wzTF7Ax15QLkFaw8K7FBOHUF7dTTRFA=;
        b=WUpJOhwzKwUbRCS84+fuHUWOORPbNDCRNfgg0oMQJCQbZ63a2GgRXKFCN/RpOfLEzz
         pLpPmYYU0pIDK2lKSQtBOx1HXCJ4LNyBWqtRf+/kL3Bl97rwmSF71GU0+mZ+teofLiMy
         SY5JIQ3hoZVT32jwdZH/bCYq4LFjPFKfCSXzBSA8agU+frOg6DLfVRuDqZWx0O+F54eo
         M/rt85ZoO1eS3hVkbFdDHpNpVtXfZza2t2BkSmM+f0F7YHJ1lQu3CR/1rjKiljI5rn7W
         oKDaRku4n9N/oTd5791bhMycQl4mPxgevqZZpq//fl7PwhfgQqRA4oVNKgbe7y3IB+Bl
         67pw==
X-Gm-Message-State: AOAM531PsNlpfe2oRl3ubi/fjutNgy00oeF6jGRc0UDugZqBzXTkTn/1
	CkTCHPQ1W/mejIf04/AF3XmL1d34I1A=
X-Google-Smtp-Source: ABdhPJyzd4e0axH4FJj+vFCMIkQfWmobTTX+dFlPc9j3xHSiC/KA9rXI5GLBUlTgwBaFExUsWMthzQ==
X-Received: by 2002:a1c:f613:: with SMTP id w19mr20871627wmc.3.1642432542422;
        Mon, 17 Jan 2022 07:15:42 -0800 (PST)
Received: from DESKTOP-R0DHVAU ([176.41.27.107])
        by smtp.gmail.com with ESMTPSA id g84sm17753496wme.7.2022.01.17.07.15.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jan 2022 07:15:41 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 17 Jan 2022 18:15:38 +0300
From: ogun levent <leventogun@gmail.com>
Thread-Topic: Your confirmation is needed to leave the
 usrp-users@lists.ettus.com mailing list.
In-Reply-To: 
 <BN6PR2001MB1090FC0E93645E3170918E80DB579@BN6PR2001MB1090.namprd20.prod.outlook.com>
Message-ID: <4D3D3E8E-E0E3-43EC-9478-9674C7534F9A@hxcore.ol>
References: 
 <164242962949.11264.15342826341726125696@mm2.emwd.com>,<BN6PR2001MB1090FC0E93645E3170918E80DB579@BN6PR2001MB1090.namprd20.prod.outlook.com>
To: steven camacho <stevenacamacho@hotmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: FOBTCTW5QBTRMOZZ6EUAQLQZS2I4Z3ZI
X-Message-ID-Hash: FOBTCTW5QBTRMOZZ6EUAQLQZS2I4Z3ZI
X-MailFrom: leventogun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ynt: RV: Your confirmation is needed to leave the usrp-users@lists.ettus.com mailing list.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FOBTCTW5QBTRMOZZ6EUAQLQZS2I4Z3ZI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0648169172689651194=="

--===============0648169172689651194==
Content-Type: multipart/related;
	boundary="_A754A60B-8AA2-4A91-96E9-E933176DD458_"

--_A754A60B-8AA2-4A91-96E9-E933176DD458_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D"Microsoft=
 Word 15 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#defaul=
t#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DTR link=3Dblue vlink=3D"#954F72" style=3D'wo=
rd-wrap:break-word'><div class=3DWordSection1><p class=3DMsoNormal>Hello th=
anks for the reply. I confirm that my mail address can be removed from the =
gnuradio mailing list.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p clas=
s=3DMsoNormal>Thank you very much.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>Windows i=C3=A7in <a href=3D"https://go.microsoft=
.com/fwlink/?LinkId=3D550986">Posta</a> ile g=C3=B6nderildi</p><p class=3DM=
soNormal><o:p>&nbsp;</o:p></p><div style=3D'mso-element:para-border-div;bor=
der:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=
=3DMsoNormal style=3D'border:none;padding:0cm'><b>Kimden: </b><a href=3D"ma=
ilto:stevenacamacho@hotmail.com">steven camacho</a><br><b>G=C3=B6nderilme: =
</b>17 Ocak 2022 Pazartesi 17:54<br><b>Kime: </b><a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a><br><b>Konu: </b>[USRP-us=
ers] RV: Your confirmation is needed to leave the usrp-users@lists.ettus.co=
m mailing list.</p></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal style=3D'background:white'><span style=3D'font-size:12.0p=
t;color:black'><o:p>&nbsp;</o:p></span></p></div><div><div><p class=3DMsoNo=
rmal><span style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span><=
/p></div><p class=3DMsoNormal><img border=3D0 width=3D555 height=3D2 style=
=3D'width:5.7833in;height:.025in' id=3D"Horizontal_x0020_Line_x0020_1" src=
=3D"cid:image001.png@01D80BCE.3AEABB20"><o:p></o:p></p><div id=3DdivRplyFwd=
Msg><p class=3DMsoNormal><b><span style=3D'color:black'>De:</span></b><span=
 style=3D'color:black'> usrp-users-confirm+b5bf6d60b1ac9b49078131495054e279=
79ff40fe@lists.ettus.com &lt;usrp-users-confirm+b5bf6d60b1ac9b4907813149505=
4e27979ff40fe@lists.ettus.com&gt;<br><b>Enviado:</b> lunes, 17 de enero de =
2022 9:27 a. m.<br><b>Para:</b> stevenacamacho@hotmail.com &lt;stevenacamac=
ho@hotmail.com&gt;<br><b>Asunto:</b> Your confirmation is needed to leave t=
he usrp-users@lists.ettus.com mailing list.</span> <o:p></o:p></p><div><p c=
lass=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div></div><p class=3DMsoNorma=
l>Email Address Unsubscription Confirmation<br><br>Hello, this is the GNU M=
ailman server at lists.ettus.com.<br><br>We have received an unsubscription=
 request for the email address<br><br>&nbsp;&nbsp;&nbsp; stevenacamacho@hot=
mail.com<br><br>Before GNU Mailman can unsubscribe you, you must first conf=
irm your request.<br>You can do this by simply replying to this message.<br=
><br>Or you should include the following line -- and only the following<br>=
line -- in a message to usrp-users-request@lists.ettus.com:<br><br>&nbsp;&n=
bsp;&nbsp; confirm b5bf6d60b1ac9b49078131495054e27979ff40fe<br><br>Note tha=
t simply sending a `reply' to this message should work from<br>most mail re=
aders.<br><br>If you do not wish to unsubscribe this email address, simply =
disregard this<br>message.&nbsp; If you think you are being maliciously uns=
ubscribed from the list,<br>or have any other questions, you may contact<br=
><br>&nbsp;&nbsp;&nbsp; usrp-users-owner@lists.ettus.com<o:p></o:p></p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_A754A60B-8AA2-4A91-96E9-E933176DD458_
Content-Type: image/png; name="3ACB4E61E3BA4A44B719B3248BF95C6F.png"
Content-ID: <image001.png@01D80BCE.3AEABB20>
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="3ACB4E61E3BA4A44B719B3248BF95C6F.png"

iVBORw0KGgoAAAANSUhEUgAAArYAAAADCAYAAABmm0wDAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA0SURBVGhD7dZBCQAwDATB+DdVBVUQMSn0GQcH
szAets7tAQCAdH9sS5IkSUpvny4AAOTpeVQ/cX0X8qc8AAAAAElFTkSuQmCC

--_A754A60B-8AA2-4A91-96E9-E933176DD458_--

--===============0648169172689651194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0648169172689651194==--

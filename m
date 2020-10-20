Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C02F6294318
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 21:36:07 +0200 (CEST)
Received: from [::1] (port=36862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUxQU-0005X5-FB; Tue, 20 Oct 2020 15:36:06 -0400
Received: from mail-qv1-f53.google.com ([209.85.219.53]:39746)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kUxQQ-0005N5-Bw
 for USRP-users@lists.ettus.com; Tue, 20 Oct 2020 15:36:02 -0400
Received: by mail-qv1-f53.google.com with SMTP id f5so1457188qvx.6
 for <USRP-users@lists.ettus.com>; Tue, 20 Oct 2020 12:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=pOq9syOk9lxjFCtp9SVL7vKB/T7Q3ztAA06HXNBwsK0=;
 b=RldoRE9rYOMLM8CwVMFWZhTIvWFbuhnfyoQ/Tvki+cOGnPEhO2fqknCW/QyDXsrG3k
 RFKpZ0w1LAxZFZHOuU6TRyhadEA0+sg1MaJaza76c4t5+MFxug1XYOXhow51QPJCGkFZ
 Xriir8Au7h77TK3rKXRSD14pNMl/Bpl86BotVb+WTAJgipLhXMqSkemKsKD748hm5QT9
 Rclz3nyvXh0gshp65m4KDijtapOozkA/H5Vr/JUBt0dhLWRVKUIczsONe2/PQiIp2eZE
 uy8UXHG4iG8Ub5bmwC6bZG9ZES4lJW82IR0u+7Zh2B4MkeQaZ5T97gpEym046vEMz2Xw
 ZxDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=pOq9syOk9lxjFCtp9SVL7vKB/T7Q3ztAA06HXNBwsK0=;
 b=TIFAISvjNdbKFeWdO7xmWeh2EWplyMkUKDwLozne9RQtsdqbK9bWU6pm617Qu3G5qI
 9Skg2b56R8Qo1b3+bP6Nen0TuH/vUBtrpGjECG5bpYpviQLWhEe3sy+e90RKrsn7ylWS
 xL7ir/+vQ5FIdJkibjE1uLeHTWlwQk1NbHanKFPqI8Mv2wGkVy1jv9Bfo9bBDYcqEzxt
 mdyLygbWZkTp1dITukGXibFMzRyJZaKnBKUe9g4C6KaS181ML5w1qceAzb5jDsSCQxdF
 +mAvCeQXpj6EZSdlWXlsxFuJEZ3VlkfOq22Zj/6+iAuru4S3+i4UFl9Aly4MhJN0zgtf
 TLAg==
X-Gm-Message-State: AOAM531B/uBO8EySyE/A35e1BTBF7+uUtKelsOKuPtZhjoz5vrF17fFG
 6QinrTsHrcwS/ux+zs6SfXfU7kS+rvhAlQ==
X-Google-Smtp-Source: ABdhPJysnhJ47TqxVYVutcuDTOkhrzYQB3froOdaSnEf1VMTYcE/i8stlsdbwH5eNvPiKau6qq5GgA==
X-Received: by 2002:a0c:f38b:: with SMTP id i11mr5019689qvk.17.1603222521624; 
 Tue, 20 Oct 2020 12:35:21 -0700 (PDT)
Received: from [192.168.2.29]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.gmail.com with ESMTPSA id d78sm1298204qke.83.2020.10.20.12.35.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Oct 2020 12:35:21 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 20 Oct 2020 15:35:20 -0400
Message-Id: <867D4386-BAFF-4FEC-9C46-206D3987FB62@gmail.com>
References: <SA0PR19MB43827AFF6817FF8079637D64C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <SA0PR19MB43827AFF6817FF8079637D64C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] Underruns causing USRP to stop transmitting and
 receiving
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6867963417635361600=="
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


--===============6867963417635361600==
Content-Type: multipart/alternative; boundary=Apple-Mail-BC85CF86-FDB7-4A23-8A6E-37697D9DEDE8
Content-Transfer-Encoding: 7bit


--Apple-Mail-BC85CF86-FDB7-4A23-8A6E-37697D9DEDE8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Probably better served by the discuss-gnuradio list and the chat.gnuradio.or=
g online chat community.=20

Sent from my iPhone

> On Oct 20, 2020, at 3:30 PM, Jerrid Plymale via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> So I am working on writing an embedded python block in GNU Radio Companion=
 to preform some analysis of RF signals that is received by a USRP x310 and t=
ransmitted back out of the USRP after analysis has been done. I have been ru=
nning into some underruns lately that I have not been able to find a solutio=
n for. If I execute some of my analysis functions in the work function of th=
e block, the application underruns and it causes the USRP to stop transmitti=
ng or receiving. However, if I execute the functions in separate polling fun=
ctions that are being used to display values in the GUI, I do not get underr=
uns. I think this might has to do with how often the analysis function is be=
ing executed, as the poll functions are only called at a rate of 10 Hz which=
 is controlled by a function probe. Can anyone give me suggestions on what t=
o try to fix the underrun problem, and any resources you can point me to tha=
t might help would be appreciated.
> =20
> Best Regards,
> =20
> Jerrid
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-BC85CF86-FDB7-4A23-8A6E-37697D9DEDE8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Probably better served by the discuss-gnura=
dio list and the chat.gnuradio.org online chat community.&nbsp;<br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Oct 20, 2020, at 3:30 PM, Jerrid Plymale via USRP-users &lt;usrp-u=
sers@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I am working on writing an embedded python block i=
n GNU Radio Companion to preform some analysis of RF signals that is receive=
d by a USRP x310 and transmitted back out of the USRP after analysis has bee=
n done. I have been running into
 some underruns lately that I have not been able to find a solution for. If I=
 execute some of my analysis functions in the work function of the block, th=
e application underruns and it causes the USRP to stop transmitting or recei=
ving. However, if I execute
 the functions in separate polling functions that are being used to display v=
alues in the GUI, I do not get underruns. I think this might has to do with h=
ow often the analysis function is being executed, as the poll functions are o=
nly called at a rate of 10
 Hz which is controlled by a function probe. Can anyone give me suggestions o=
n what to try to fix the underrun problem, and any resources you can point m=
e to that might help would be appreciated.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-BC85CF86-FDB7-4A23-8A6E-37697D9DEDE8--


--===============6867963417635361600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6867963417635361600==--


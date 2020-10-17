Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 433C5290FB0
	for <lists+usrp-users@lfdr.de>; Sat, 17 Oct 2020 07:55:02 +0200 (CEST)
Received: from [::1] (port=56592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTfBC-0005xV-9P; Sat, 17 Oct 2020 01:54:58 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:42532)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kTfB8-0005s6-0z
 for USRP-users@lists.ettus.com; Sat, 17 Oct 2020 01:54:54 -0400
Received: by mail-io1-f47.google.com with SMTP id k21so6596331ioa.9
 for <USRP-users@lists.ettus.com>; Fri, 16 Oct 2020 22:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=r2RWoN0/g3fNL/YJKfqnDJ8h99gIdrrefmccZQTf8VY=;
 b=PgYbPoLcfMzpt1sQCqYG0G9rek6Cz3RJ6018P//+2mHVbRbYN879ESzhZUxVrIvt58
 1S9eAJc/pAkfA5GrERpYQ9UgIg6/lcaTl4bFA12Y2nJTIl5x47lgCvXfQcG0O2WcvaF+
 ICWkxvfuA1s1PKta6Y6pG/bimiBUDcIm8fMg8z8JMgGsXv6Ai6OVdAKK7QNL4rxdzFNG
 EC1Y4remMiRTYsHcaoorfkEEOBETICCeO4AXH/7hjh3Qab8C8pCHQHNoqok4YlxOr4K4
 1ONMDsWGvFeIFSFV1L7Obv4P/Kbe4FZ59C919wP+hK7Gy0G/gsGpddTkgNsmTPZBi+fA
 nSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=r2RWoN0/g3fNL/YJKfqnDJ8h99gIdrrefmccZQTf8VY=;
 b=k6UQHx06kRaf1epXF1g0j1UnGLbcRJzquH8bq4NVQwTEfUFLtelUOQzrGdtPTGvl2+
 Lv6124ATxQ7DjVVSGh8opFirA/S/ENR/wsKFUQ2OOqNOTeJrRA2XlB94AZiGR/do0VtG
 /0ONw/2dU2dSiTtttXTsDxn7hbmmNNG6At+ompZrmpEsMpzVGtabXJYHeABXa3LPJWNo
 2OiSl2mLBzSJ/YyAq9+xN9bnSrm7hxNkUMHXBE77t8BTR1ZrGBBlzcriiVW2/FJv/cF/
 MUZHrAKxeCV4JRY6tHR02BPlO9hWLNAEx5Azr9fSpTSaO8EUFFsKdYhnjEpnpyYME/qZ
 kp5Q==
X-Gm-Message-State: AOAM530rJL0JrI2lA5kVkIM+vN8ZKdvapa5bMMRAGjr3hfNnlQzkGl6L
 16iEfb7/PbtaKs2LVALlLjw=
X-Google-Smtp-Source: ABdhPJxZ7aY3yfEf50CHQ7Zf2v1bVDgIRN/gSZ4uCSw27RJs68r4vL830dZHjsUC62pWoc2V/HhmwA==
X-Received: by 2002:a05:6638:d8b:: with SMTP id
 l11mr5011029jaj.11.1602914053180; 
 Fri, 16 Oct 2020 22:54:13 -0700 (PDT)
Received: from [192.168.2.29]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.gmail.com with ESMTPSA id h125sm4260671iof.53.2020.10.16.22.54.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Oct 2020 22:54:12 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 17 Oct 2020 01:54:11 -0400
Message-Id: <60EF5A9C-9427-44D1-9B04-9C4FD0A615E6@gmail.com>
References: <F8945B71-33B6-456E-9B47-1698821C25A5@hxcore.ol>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <F8945B71-33B6-456E-9B47-1698821C25A5@hxcore.ol>
To: Omar Aldana <omar.aldana@performanceembedded.com>
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] UHD 4.0.0.0
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
Content-Type: multipart/mixed; boundary="===============4406605824557901460=="
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


--===============4406605824557901460==
Content-Type: multipart/alternative; boundary=Apple-Mail-F5BCD218-0A46-49D1-AABE-619054D87BEB
Content-Transfer-Encoding: 7bit


--Apple-Mail-F5BCD218-0A46-49D1-AABE-619054D87BEB
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes, as far as I know you=E2=80=99ll need to revert.=20


Sent from my iPhone

> On Oct 16, 2020, at 7:25 PM, Omar Aldana via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> I=E2=80=99m working to setup my E320 in network mode and need to match UHD=
 versions on the host machine and the E320. The latest UHD version on GitHub=
 is 4.0.0.0. However, after performing a file system update on the E320, the=
 E320 is still running UHD version 3.15.0.0. Should I revert my host version=
 to UHD 3.15.0.0?
> =20
> root@ni-e320-31ED908:~# cat /etc/mender/artifact_info
> artifact_name=3Dv3.15.0.0_e320
> =20
> =20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F5BCD218-0A46-49D1-AABE-619054D87BEB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes, as far as I know you=E2=80=99ll need t=
o revert.&nbsp;<div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Oct 16, 2020, at 7:25 PM, Omar A=
ldana via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></bloc=
kquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta http-=
equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"><meta name=3D"=
Generator" content=3D"Microsoft Word 15 (filtered medium)"><style><!--
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
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><div class=3D"WordSection1"><p class=3D"MsoNormal">I=E2=80=99m wo=
rking to setup my E320 in network mode and need to match UHD versions on the=
 host machine and the E320. The latest UHD version on GitHub is 4.0.0.0. How=
ever, after performing a file system update on the E320, the E320 is still r=
unning UHD version 3.15.0.0. Should I revert my host version to UHD 3.15.0.0=
?</p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p style=3D"margin:0in">roo=
t@ni-e320-31ED908:~# cat /etc/mender/artifact_info<o:p></o:p></p><p style=3D=
"margin:0in">artifact_name=3Dv3.15.0.0_e320<o:p></o:p></p><p class=3D"MsoNor=
mal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p></div>=


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-F5BCD218-0A46-49D1-AABE-619054D87BEB--


--===============4406605824557901460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4406605824557901460==--


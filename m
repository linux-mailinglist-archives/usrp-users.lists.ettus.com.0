Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C978F13720
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 05:37:50 +0200 (CEST)
Received: from [::1] (port=50624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMlUh-0003Zb-Pt; Fri, 03 May 2019 23:37:47 -0400
Received: from mail-pf1-f170.google.com ([209.85.210.170]:42354)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <ianb@ionconcepts.com>)
 id 1hMlU9-0003RJ-Gw
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 23:37:43 -0400
Received: by mail-pf1-f170.google.com with SMTP id 13so3553204pfw.9
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 20:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionconcepts-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=quVfhjoRo6qetN6szDPdFrL04vnvlzqMDuXE+Su6o1A=;
 b=ASFHqwodeumrSkI6QvamxF9QU+bw9ZJ5qshP5Ma5ZjwoD2ETgE0b9oMgBA6Cki/g0S
 26Avqu3YUgDCXEMKcX8/3S6XaJHGv7tu+lD4+85eVHXhdUra7d0huerHf1jBBy17IK8U
 TT/V1E4Jihw6PYe6wchHRx1AbuvQEhh5oW7bAj45sgn+PJvWaCZ4sVGbUxmwHEK/L73H
 4BgjyMuedZUjYDr9E4fWMGR08y3BCm2KOyx7m+yzUYOP5/3JOBxe3VbEmJnmgVYNGeDD
 htSVY9ma1ZDpP6rX9VBVdvDCqI5uLEoGLoOteMKAjw/mMrQerOs6YwedpK1/hlGEn48L
 A5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=quVfhjoRo6qetN6szDPdFrL04vnvlzqMDuXE+Su6o1A=;
 b=R+Jwzcyn5mBSrrsgOPz/XWtpmzHtM9K4Nd84uxgu9on6H6Aey/uQVFbtVijwtnoL00
 zy7X5OeUjCM9mhLFnEn1ZgHisbSo1yLKaJH33XbOpuZaR9M+WHWKuli3pxdLW/nT8jpj
 8WDio2VCRxNTMYflw/rrMRVXhS98mbIE04V+166G9RNk/OKQUMzD36gEXqm50+7rMiCM
 zSYGpZeHEylsRTuxrSB5yjvxQiRPoMMomOBK08dhD8RyeWwS+UXMmaLay2AD01LyYVhR
 UDWx1awq5EdxK7Ux4J0GDbef6JOG9iqFLEu6cBtO6MY5Qot2PNfKJI8WkjuhU8la5zzA
 +d8Q==
X-Gm-Message-State: APjAAAWhyIfxuaOkxZDR2f6lYze30EbRKxjEVNP5W7TDKGz7nxOIQ2fR
 0ShrAriOVkEMQQ7igQqPnnoCjQ==
X-Google-Smtp-Source: APXvYqyTpDEXh38JRV9tvuhCcq0Y6riEWUFNJJF6VBvg/vXEro+ZE2+42KqGoSY3ZeoOr2al8fTJLA==
X-Received: by 2002:a63:5a4b:: with SMTP id k11mr15322343pgm.119.1556940992429; 
 Fri, 03 May 2019 20:36:32 -0700 (PDT)
Received: from pox-laden-system.ionconcepts.com
 (c-73-222-38-19.hsd1.ca.comcast.net. [73.222.38.19])
 by smtp.gmail.com with ESMTPSA id f71sm6763778pfc.109.2019.05.03.20.36.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 20:36:31 -0700 (PDT)
Message-Id: <2D1EC1DB-D227-496B-A3BA-85C2C7B98359@ionconcepts.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 3 May 2019 20:36:30 -0700
In-Reply-To: <CAFBh5UG1_VL89hqwUney40LMud4i_MBrPK7Kha3FRGouwwfOYQ@mail.gmail.com>
To: James Jordan <james.jordan.fun@gmail.com>
References: <CAFBh5UG1_VL89hqwUney40LMud4i_MBrPK7Kha3FRGouwwfOYQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] what is the difference between UBX and UBX REVC
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
From: Ian Buckley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ian Buckley <ianb@ionconcepts.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7350079075012882788=="
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


--===============7350079075012882788==
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_5632F5C0-A8FB-48E8-8678-DCDB51205B92"


--Apple-Mail=_5632F5C0-A8FB-48E8-8678-DCDB51205B92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Did you look at the schematics? The change block indicates that they had =
to replace one (of the many=E2=80=A6) parts that Avago has made =
end-of-life.
 So new LNA, upgraded T/R switch it seems.
https://files.ettus.com/schematics/ubx/ubx_revC.pdf =
<https://files.ettus.com/schematics/ubx/ubx_revC.pdf>

> On May 3, 2019, at 7:48 PM, James Jordan via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> Hi,
> i want to know the difference between UBX and UBX rev-c.=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_5632F5C0-A8FB-48E8-8678-DCDB51205B92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Did you look at the schematics? The change block indicates =
that they had to replace one (of the many=E2=80=A6) parts that Avago has =
made end-of-life.<div class=3D"">&nbsp;So new LNA, upgraded T/R switch =
it seems.</div><div class=3D""><a =
href=3D"https://files.ettus.com/schematics/ubx/ubx_revC.pdf" =
class=3D"">https://files.ettus.com/schematics/ubx/ubx_revC.pdf</a><br =
class=3D""><div class=3D""><br class=3D""><div><blockquote type=3D"cite" =
class=3D""><div class=3D"">On May 3, 2019, at 7:48 PM, James Jordan via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Hi,<div class=3D"">i want to know the difference between UBX =
and UBX rev-c.&nbsp;</div></div>
_______________________________________________<br class=3D"">USRP-users =
mailing list<br class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_5632F5C0-A8FB-48E8-8678-DCDB51205B92--


--===============7350079075012882788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7350079075012882788==--


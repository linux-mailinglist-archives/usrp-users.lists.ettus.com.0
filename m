Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E96C213EE4
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 12:36:51 +0200 (CEST)
Received: from [::1] (port=41110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNEVL-0003Zj-PC; Sun, 05 May 2019 06:36:23 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:44634)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <mite.engr11@gmail.com>)
 id 1hNEUo-0003UQ-Cv
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 06:36:20 -0400
Received: by mail-qt1-f179.google.com with SMTP id f24so1215576qtk.11
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 03:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=EngDqtOESDE9Ef7LFh1fUt09C0bp/HWPyGmQbTLQdQw=;
 b=rA8NaivyOkee504y1xpUmyYk3YUR+AvnaCXHjIbdsPmJAtPnXMzovkHAmGLJuNOlyx
 8rq4hHMY+3mfgvqpVUOEWcyGh2oyAIhOiEiQnmKuwcpiC7rsgmYUmgRuctgUXlWDOT8w
 r+HNBkXShrAaHzXg3rPF1fVN6vIGDq8neFxBWyNAh+wiT6+TMSgjPOMsBjhvFFtsE1eG
 8o1W+b9IBGKiZPBihvKEqRmAxRU/N8Qz4e0/6H+hVyyYOksMDs60lNZLcgUDAPwjLQtq
 lnq3bJ3SqB9dDp6PPst/J91lgz++j3pOe/EmSPrmqfud7uSmJ9C9WLcPQ2mFcC73Ugd0
 JSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EngDqtOESDE9Ef7LFh1fUt09C0bp/HWPyGmQbTLQdQw=;
 b=qcXm7GFvbBd+iEhYwTAuiTTujzkOtEPCdWP0uv+wIU8V0RfiNS6x3WjPnO13r/dZ5v
 YwBdmZabikNM6yVGaVwk9KkuQx1oUgsrra/HXlAcftRy7HJzGEF6XdDlfiJEwzvS2hoz
 htlwjnEhPqoF6v+KOyuTi2BVE/dia9MxZjNZqbQAg2/rFOrVTci7xatX5VvREhxVG3Ot
 FdLiHizMcq1xkFWcUPmQt94Sl0UGG+YgyKqQZA5JqxhZMhk1sd1i72+bbyRah+SAwHOk
 kK/2vm0xsw/p6qMH0/mhPqnZrgCqccHCUXH3SGtoNb0Wl0iuk4I1OFo7F2Yp3fruKndF
 0JSA==
X-Gm-Message-State: APjAAAUvVpn2dQ7Q9MipabIhCJhuyXs9ZcWTJjZacfuz+cj553YX0aEc
 o4ZPOLXtyYcGdQ/iWFGY81wrxWdYK+/p2WKO1i2cDQ==
X-Google-Smtp-Source: APXvYqysvNYJvQnSSP1r2FoBgHUSmCj3yPmxKB7PJt/836y+4PMAmVVuBsMUBujqxbqoxXFT1V5/xhFTtADPgG3A3H8=
X-Received: by 2002:ac8:25bc:: with SMTP id e57mr16681603qte.167.1557052509721; 
 Sun, 05 May 2019 03:35:09 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 5 May 2019 15:34:58 +0500
Message-ID: <CAPhW9TROoM1BBEd_8qu-LdT7tFzqcz-hWDzuye=dJXg_N_OiGg@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Vivado versions for RFNoC
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
From: Sam mite via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam mite <mite.engr11@gmail.com>
Content-Type: multipart/mixed; boundary="===============5996727112138743589=="
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

--===============5996727112138743589==
Content-Type: multipart/alternative; boundary="000000000000bd169605882189b7"

--000000000000bd169605882189b7
Content-Type: text/plain; charset="UTF-8"

I want to know what are the current supported vivado versions for X300 and
X310 and also for E310 and E320 for generating RFNoC images?
-- 

Best Regards,

Sam

--000000000000bd169605882189b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I want to know what are the current supported vivado =
versions for X300 and X310 and also for E310 and E320 for generating RFNoC =
images?</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartma=
il=3D"gmail_signature"><br>Best Regards,<br><br>Sam<br></div></div>

--000000000000bd169605882189b7--


--===============5996727112138743589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5996727112138743589==--


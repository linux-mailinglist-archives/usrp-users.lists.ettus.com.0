Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA34B296857
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 03:41:10 +0200 (CEST)
Received: from [::1] (port=32896 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kVm4l-00067y-Mz; Thu, 22 Oct 2020 21:41:03 -0400
Received: from mail-vs1-f46.google.com ([209.85.217.46]:43601)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kVm4i-00063A-Fz
 for usrp-users@lists.ettus.com; Thu, 22 Oct 2020 21:41:00 -0400
Received: by mail-vs1-f46.google.com with SMTP id d19so10943vso.10
 for <usrp-users@lists.ettus.com>; Thu, 22 Oct 2020 18:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=YrZp4sVkbbPWmVzZyDwgXxaGCeHC2GawvjU+08LZN0c=;
 b=A4yPqzfzKxuEgSm28YVWfrmq5ePXeGhDJoq8jMOMpL3Ui6ArpHR8ou6yFOK+kez8LE
 dw4RUXefnO429UscvCySO6y/oUuZLYYXWapEqwLagAyz2zLmo7L6S00072eH84e3MkMO
 XxVoiNHZNtVtkNTTXl8BNIuSs6koUj0zpXNTg7ovTwOMeINzu2+4TZPdX0+q6SrkdW2Q
 dkjay0tEv/lbB5E/1Jt/vLrkgP38z3nmkvgB1KO1x0apXU+ETWa6CXH26OF9bxAdtenH
 HCY9SB1YWtpOMhi9q81iFdSl17wIeWjq7Q2T9F/nym+z1uGSyp5ac0Yi+hiemXOCYjVt
 WusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=YrZp4sVkbbPWmVzZyDwgXxaGCeHC2GawvjU+08LZN0c=;
 b=hVuwOKhjliulx5uIsaxTzx4fitk2CDiT9HDThZ7QQZKiyZZkSO71SG5auK1VGmL0N0
 8cc/j1Cb756A0JxWuiRvfZrqlfWyinOvwY5rDzgJulJp/urdei8ZK6QPghw1yq5KyuZk
 VEdjbAI3JIJzMULrB8eRH2aiF9tdKL6XFhYmkRssq0Uu6kJ2JTesg4LQp29/bIOcd23F
 9MmjogwRrhCE16OAn6lMJFrWBBf31LQZOCz0xdO7ndborlj2ymtLkFEBAdsryypVgOEP
 Q/kggJ4ALmiaRvrv3+DGOEm2UInoF2iCCiTcZwRI6XoX6WIsdxc1YeO05UT/xNTmWVJ1
 1eUw==
X-Gm-Message-State: AOAM530d7Pyr23E4CpmY5t64B+hPONfwFfXq+y8NAZYVtrRvK5ipewC7
 nrR405NpgpRcswmVSomSajUc/Zdsxz86e4uu016aheFinLv76g==
X-Google-Smtp-Source: ABdhPJzfQ+6KFL9s3/x3c/ENbIoA7jVCzuMLszqbhTgQvIhJ62euDqLEzW4KoYRlVtiBxOFtUq47e4xGkTQQ8TvP2Q8=
X-Received: by 2002:a67:1e02:: with SMTP id e2mr3626231vse.59.1603417219509;
 Thu, 22 Oct 2020 18:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.48.1602950402.29849.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.48.1602950402.29849.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Thu, 22 Oct 2020 21:40:08 -0400
Message-ID: <CAKx8PBhSXHjXvg_HPKoJEOVAf4HzxK1ez-HhkXjVd8hUM3k-WQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] UHD 4.0.0.0 (Marcus D Leech)
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
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============4900553357249306771=="
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

--===============4900553357249306771==
Content-Type: multipart/alternative; boundary="000000000000cbb41f05b24ca91c"

--000000000000cbb41f05b24ca91c
Content-Type: text/plain; charset="UTF-8"

There is an image out there with UHD 4.0.0.0 in it but I'm not sure if it's
ready for prime time yet.  I stumbled upon it while looking for a different
e310 image.  I am actually using this image with the e310 now, locally, but
so far it has been working for what I needed.

https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/

--000000000000cbb41f05b24ca91c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is an image out there with UHD 4.0.0.0 in it but I&#=
39;m not sure if it&#39;s ready for prime time yet.=C2=A0 I stumbled upon i=
t while looking for a different e310 image.=C2=A0 I am actually using this =
image with the e310 now, locally, but so far it has been working for what I=
 needed.<div><br></div><div><a href=3D"https://files.ettus.com/binaries/cac=
he/e3xx/meta-ettus-v4.0.0.0/">https://files.ettus.com/binaries/cache/e3xx/m=
eta-ettus-v4.0.0.0/</a><br></div></div>

--000000000000cbb41f05b24ca91c--


--===============4900553357249306771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4900553357249306771==--


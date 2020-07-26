Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D84322E1F6
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 20:26:24 +0200 (CEST)
Received: from [::1] (port=36494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzlLo-0004Ek-5n; Sun, 26 Jul 2020 14:26:20 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:34610)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jzlLj-0004B0-Ru
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 14:26:15 -0400
Received: by mail-qk1-f176.google.com with SMTP id x69so13374059qkb.1
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 11:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3lm/6REYRde3EOx/SHShkIcVJ9shOfkHj6FMUoi098c=;
 b=Upt2OgyFkdLu3CbpxYRh/i9UFSTIAUr0w+eF3iSsuMZfpto3MBjk/XuM/tlpNozZdG
 /mJy4RM0FqE6dzSEU8cgoVg8CJJDS+h+B/XtOHOWIZrVC3+HqFwos+Ql0P17xyL2JcfS
 6ffoZr0haZHjAD+6lDW3MT+MJtAdNN19s4HBU2Od5ZCto+Yqi0u1VYZdzr/ZapGJwzbE
 Mrt6YhX+L16NE3rjVweAEI311ifdQkXY1OgbEH+KQnP+G7YkQLerFPYqHM9VZUcH5ssr
 Q+u9GwcwI/nYGjGhsONjL5ReXebgT4xyyXeyuJpHlOvuCVJu2dLwqxeR0AC5pWapx7X7
 06Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3lm/6REYRde3EOx/SHShkIcVJ9shOfkHj6FMUoi098c=;
 b=CDuG3NTgHKHCIEC/gKSU31q7thO+IInHR5LB77In73M0859VfVIpXjtyr3nDJ5HP+X
 nuc1DpFJP0JnjnQjEBBSzc47fDWTYPozj0sSKEAjPW1WkzatRGBkZK+dWd4oivIYlMqr
 yct69A/LJZzX3et+CgLz3c/p/j5j/1SI9otPzRUO62ZrOqOeUg2UDk9beTpSNBS1bIyK
 twt3dr18d58RPMDJIA+3j3E5sPH7akbNj1WD/+kQwPENXRFfUUPqQ0WxNmxDC/ISzEOt
 Bfw38c9vgEI3DcO+GwwKZ1XmF2FbfEGPAgDyzLf4NTP8tWoDGbA5exppl0Qm+6MHyh0M
 4OjQ==
X-Gm-Message-State: AOAM532uLuW4QDm477KyqdqEjmkOEqyKqGWL/oug2wZYJEj6yjOY/L+M
 bANiAbkaB4B1jplI3qmNa/V0VCP0qbnlxHxZrY7HVaMy
X-Google-Smtp-Source: ABdhPJxwm4NikjgFACQ6/lo0P5gMI1fn6+RUQytk2GWJdgUqtSxgCr/USZqKwCJX3y5YQVhTOTZJE63lGhjGdppmoRA=
X-Received: by 2002:a37:8305:: with SMTP id f5mr20409647qkd.497.1595787935109; 
 Sun, 26 Jul 2020 11:25:35 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 26 Jul 2020 20:25:24 +0200
Message-ID: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] AD936x disable DC offset removal
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============1826853007882379736=="
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

--===============1826853007882379736==
Content-Type: multipart/alternative; boundary="00000000000002566305ab5c55db"

--00000000000002566305ab5c55db
Content-Type: text/plain; charset="UTF-8"

Hello, could someone help me where one can find the UHD Cpp file where the
DC offset correction of AD936x is enabled ?

I need to make a Rx --> Tx loop which is independent of the center
frequency of the Rx signal.

Thanks a lot

David

--00000000000002566305ab5c55db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, could someone help me where one can find the UHD Cp=
p file where the DC offset correction of AD936x is enabled ?<div><br></div>=
<div>I need to make a Rx --&gt; Tx loop which is independent=C2=A0of the ce=
nter frequency of the Rx signal.</div><div><br></div><div>Thanks a lot</div=
><div><br></div><div>David</div></div>

--00000000000002566305ab5c55db--


--===============1826853007882379736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1826853007882379736==--


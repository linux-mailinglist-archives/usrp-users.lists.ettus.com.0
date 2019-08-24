Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8A09BF0A
	for <lists+usrp-users@lfdr.de>; Sat, 24 Aug 2019 19:42:08 +0200 (CEST)
Received: from [::1] (port=43138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i1a38-0006IU-11; Sat, 24 Aug 2019 13:42:02 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:44162)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jmalsbury.personal@gmail.com>)
 id 1i1a34-0006EK-1r
 for usrp-users@lists.ettus.com; Sat, 24 Aug 2019 13:41:58 -0400
Received: by mail-io1-f42.google.com with SMTP id j4so19280216iog.11
 for <usrp-users@lists.ettus.com>; Sat, 24 Aug 2019 10:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1yUcYIIepCYMJbUEHquygwBG17Sat3vrRG9f0B6EJV4=;
 b=qCUsIpOBukhBu93yOlxnKqLthjPcUCiZjNyzXdMwF91zRsAWbqCA/5WO8JVWY0zVOs
 1OF4BeJ5uUbdFWyTq0wTfrXQqaW6aTZ6Y6LAcr1elGfJvxoXoiAsDm5DbpWqJ8Qt26iV
 ssN2/tuY9+ImW4DvN6UcBlxXejMgEzPc+i7zfXLAxgFMqrfnuWok0dUBpqoQcGiIG0k6
 4pUaT4gf5epUixzhcIJbDOU2HDCa59/6noiuz/CcNM1s4MlouGTN7MfsNgsre8Y78F1L
 Y+E2fVvG/Fqvzt9CQW2Sgb4PxramQvXv4ByL7insAL4rY6ExPmPNexSp+HgTNBcHZLaj
 aipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1yUcYIIepCYMJbUEHquygwBG17Sat3vrRG9f0B6EJV4=;
 b=HzRjQsujshK9vOtMKioeTKBjFJoykSMri1OqNfenEgdmeAvR7/l1OM/oqHHHkWb8rs
 vq+8EjRFfMzxocJXBMZ6gX9WKrPVwgCEt3m3JQFFKkbw8Wc/cgTjXqnEvzzsU57T0nad
 JpeVWVvd2GdpMG7h67atW6f1dLaDr5vVN8T8g07cBtyeSQGqLgzE7KI50PUZrsL3yAUB
 B8iDb6H31hF9xEptBMnJCakFkZbBXJkgdpqWANOyK3CzaTmBfGwlrK+tnr0L5dZ6ZC3+
 62pKDdFuC2lS9lsDJy4swva2Gmnr7LzQl98RtxKPuA9QgTt97eUKfm5gsN7lZIZnHLAp
 rPcg==
X-Gm-Message-State: APjAAAVk/A6Cfg0aTjzFs48QfrQmQvh4ZArkJS93NOYPBprTItYHkn4T
 jz4b23X2GpBMIChjhKeau0q+AkcBHI4+PX00viZHNw==
X-Google-Smtp-Source: APXvYqxO2MLQVMbOcpvEuzyIu9VsKxVaAQzkdBTiTozHDLDqzi7dAZMocOiG6D84L1Aj+ZPjyRe7P10keD0UpRptHI0=
X-Received: by 2002:a5e:de0d:: with SMTP id e13mr4600681iok.144.1566668477174; 
 Sat, 24 Aug 2019 10:41:17 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 24 Aug 2019 10:41:05 -0700
Message-ID: <CAK+fQfdTVGxP9XKx_quejJFYGvjW--JuO86u_KEF2OGXvF1xiA@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, 
 "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>
Subject: [USRP-users] Looking for DSP/FIRMWARE Engineers
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
From: John Malsbury via USRP-users <usrp-users@lists.ettus.com>
Reply-To: John Malsbury <jmalsbury.personal@gmail.com>
Content-Type: multipart/mixed; boundary="===============6737951598004005794=="
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

--===============6737951598004005794==
Content-Type: multipart/alternative; boundary="0000000000001019760590e06e4b"

--0000000000001019760590e06e4b
Content-Type: text/plain; charset="UTF-8"

Cool space stuff.

If interested, send resume to john.malsbury@spacex.com

--0000000000001019760590e06e4b
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Cool space stuff.<div><br></div><div>If interested, send resume to <a href="mailto:john.malsbury@spacex.com">john.malsbury@spacex.com</a></div></div>

--0000000000001019760590e06e4b--


--===============6737951598004005794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6737951598004005794==--


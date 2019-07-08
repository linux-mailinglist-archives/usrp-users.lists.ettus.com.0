Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B2B626F6
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jul 2019 19:17:37 +0200 (CEST)
Received: from [::1] (port=55926 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkXGe-0004og-VU; Mon, 08 Jul 2019 13:17:32 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:45115)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <qiu.guowang007@gmail.com>)
 id 1hkXGb-0004gS-FR
 for usrp-users@lists.ettus.com; Mon, 08 Jul 2019 13:17:29 -0400
Received: by mail-qk1-f173.google.com with SMTP id s22so13866257qkj.12
 for <usrp-users@lists.ettus.com>; Mon, 08 Jul 2019 10:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=X0MUNAWBSxuz8E3AWlzkeovnUSNfw855MPG2pitmf5E=;
 b=igLFcgXQxQkhxW/tNHBYLoVB8cmoBCLi+viS033bsh3SdWslamUczBkrTLhJhU36tj
 vSWAAkkEuVQ5rMhQ3Uf0gyhDGMWUKWiXkBDqXVwwEbSrGoBtW9g4K5b8k/23Ggcagpcm
 avGRMgEihNTRVa3W7XRLFCpRPbQXchMnJ/ZAcxQhLq4d8wjjKStEvL7sQDTA0ZcamU5o
 dB1kidUUWat7dTSrNqAfXDjt5Zi+SZOFXSymCYWI014WOzE2AILdjTZKliRsLfS0fnyO
 yGZCbKAQX6zGpZL9NAJR3IkifH/aT04x/wWsw66TQ2Rv1iKudl1i1V1YcPBSs5Nj1aXW
 koPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=X0MUNAWBSxuz8E3AWlzkeovnUSNfw855MPG2pitmf5E=;
 b=K8dAUwpUbkBxcfAoC6FTarWPVQMm7r4zcqkwa/4OzlH0KNz8KduVDmnL+aaWr0mAtJ
 LevhW0x3ymBhcM6GJwudJ2SflEkNh3MEdEFeFGs0CKO6gQ5tBZTfHHIilzqsTYSbbEJA
 lkfJ9f88ZxWVnWDwSd88VAY0yofJwwb2XOSlx04GfCDTLzrbox0Zf1YX0fjck6XzMYgM
 yztdsasdKwNjP9oGwdCs2Qvw7vHdUI9Qx0zkJDJUGQgnroB91kukMlxeCgXN/OfuQ0O9
 giQHwNasNHufNlJk3stsGdoeJy6y2afzSjspZs5N2A0bK9h8ce9F3b5srOJZIKsp6IrJ
 gR3Q==
X-Gm-Message-State: APjAAAVX3iHcGXGJcvQLFiqNHWx4iMZLX0o9Db2Z85dVWjQOTaVwphAY
 2BBTgt3Z6R+L6xeG9QwRc++PQn4h4i5BeXuZ+5WShtKRwY8=
X-Google-Smtp-Source: APXvYqyuBhgWxgyoYPu1hJ/+uFNyr9UAfhsw5XF1n71fMS2c4S1qlWDZ69PeaF2pPMugKhSkmkZaMg3DchbTkb6D8ZQ=
X-Received: by 2002:a05:620a:1519:: with SMTP id
 i25mr15386275qkk.331.1562606208749; 
 Mon, 08 Jul 2019 10:16:48 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 9 Jul 2019 01:16:37 +0800
Message-ID: <CACjmV_kUgASTCpxxTE52nX0e+cZRwTitXOWQRZouUVKUtUEUVQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Two separate applications with USRP N310s using dpdk
 in the same host
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
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============1829156419364902419=="
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

--===============1829156419364902419==
Content-Type: multipart/alternative; boundary="000000000000ff144d058d2e9bd1"

--000000000000ff144d058d2e9bd1
Content-Type: text/plain; charset="UTF-8"

Hi all,
Is it possible to run two separate applications with USRP N310s using dpdk
in the same host? If the answer is yes, how to do it?
Best regards,
Damon

--000000000000ff144d058d2e9bd1
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hi all,<div>Is it possible to run two separate applications with USRP N310s using dpdk in the same host? If the answer is yes, how to do it?<br></div><div>Best regards,</div><div>Damon</div></div>

--000000000000ff144d058d2e9bd1--


--===============1829156419364902419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1829156419364902419==--


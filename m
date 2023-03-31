Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E71F26D1A86
	for <lists+usrp-users@lfdr.de>; Fri, 31 Mar 2023 10:39:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A5953846C5
	for <lists+usrp-users@lfdr.de>; Fri, 31 Mar 2023 04:39:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680251956; bh=lCv4uwdDrPeB5GhzamPl1QHUM5hRWQIfsRpUUC9x5ek=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=m9j31PU8XVrztVULBNejbxirpzNTbHUjLVbR1eH8yYUqZgVflL+s4dmT59QIAbkWo
	 bXtqWX+jBunmhZPcTU/xoISsmNcM+CsS3HLxERsuezcUQtRsRX5ZnKkAJj9je2zrZm
	 /YeHvTj4SCWSRl5/klAes7mQegHgyN05aYpy0JXA2UPuqtHJgcxywOK2ekfMTLb6gt
	 DAzXxQTEDxJ82T1+LJNgfUvl4zioeodCvRER/XdVas9xSfKC+MzSFOCvJqZEa7jsld
	 WtSNLVNLvNJ0i19r8i6+MVjPGCLKKSNS2nbXwU4qIyeP1DkmVtoooDrHxy5OzV2uki
	 WzHhJSTFi2jKQ==
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FD493844EC
	for <usrp-users@lists.ettus.com>; Fri, 31 Mar 2023 04:38:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TU/zssg7";
	dkim-atps=neutral
Received: by mail-pj1-f51.google.com with SMTP id d13so19794926pjh.0
        for <usrp-users@lists.ettus.com>; Fri, 31 Mar 2023 01:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680251910;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=on99LfFyWodYBM/7WfreYk7hCNsXBUT8SgkKXcGJHhE=;
        b=TU/zssg7Dd2fj41xb+57fNDsvFloHLBy7eukreprzFS654EiPL3sBQZxZsHxTc4o19
         VkKGh31doow7nBK7sqviW1eq340dxsyYllKRCCIuS/y80PpIq/tRRsI7ro98RlDV7PPR
         z7qr5I7vDBXPMqVAd4KsHNOMNjz29ekPJnKlWpBY7NX2aHmGa99WfzIu9kaTqfR/lrbT
         S5bNncbDmTBNHnYRAhry5gIirFncjunB9j4eKQ8BBm9xBjEPDS77kBJCOphj4STFqbF6
         WxWm0T/BRnN+F17CRRHdWZUGt+8CkfD21GFqlsNeFJT23Hzqii6gvWNG1YBXwIsrr2Km
         fFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680251910;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=on99LfFyWodYBM/7WfreYk7hCNsXBUT8SgkKXcGJHhE=;
        b=Ia/PoR2f+iIVuPGLh2uQmddBL50KWcgOfHhaiwbpE2UwOwFd21r5OXpxMB/K2z3LuX
         N3+yWmFSkAwWx1kk1DtF8Ih/80C3wDT+odKPyAo9tqKtjOR0tsn5smnWGHWKewmcu4v9
         NZRwindcX0ndptMvzMhITUkQYycp5uGr78KpoMMrUFvwRYH1+xFObk6fKoO8Ugb0lIVS
         Fty+6s/h72fyuguaGahOxBeZXFZJ4VlMTy83+C74cy3Absw/XNJ7BIWojKil4exum0Pk
         XoxtWD7rXJT07xzRssckJzYRX5GLLaEowInuHMs+BXXUvuiLjQIvZhV+7O7n2NiEKFWU
         0EUg==
X-Gm-Message-State: AAQBX9d+FPxnGJy0vrvv9koLAOE/0vBG9r5sP4U24HMmN97g9Rpz/2WW
	TCoCb7Lq9ftqdnvxeBQ2dPQbWqaVjcb8R4aJ2aMPECzAet4=
X-Google-Smtp-Source: AKy350aLalCoThDr2knStZlEpNC4m00QgKIf3/yYHOj2UvKw22V+GRadnQdH9BCD67wqP1+ydxSvmYYTLOhS6ECeAZg=
X-Received: by 2002:a17:903:12cc:b0:19f:87b5:186d with SMTP id
 io12-20020a17090312cc00b0019f87b5186dmr9619762plb.9.1680251909908; Fri, 31
 Mar 2023 01:38:29 -0700 (PDT)
MIME-Version: 1.0
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Fri, 31 Mar 2023 10:38:15 +0200
Message-ID: <CAFPzw1n6OBai7G4U8PW7wnH_CjepXxWOpJH+GBfp+CMuDr+Dqg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ABVXY556MSKESL4SJ3DRCX4PC7LBZ6UQ
X-Message-ID-Hash: ABVXY556MSKESL4SJ3DRCX4PC7LBZ6UQ
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Conexion error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ABVXY556MSKESL4SJ3DRCX4PC7LBZ6UQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3662406284425934737=="

--===============3662406284425934737==
Content-Type: multipart/alternative; boundary="000000000000392fe405f82e22ff"

--000000000000392fe405f82e22ff
Content-Type: text/plain; charset="UTF-8"

Hello,

I am working with a usrp X310 equipped with two TwinRx and I am having
connection problems. When I connect it to the PC the LEDs on the 10G Eth
connector do not light up. When I open the case I can see that the internal
DS16, DS17, and DS1 LEDs don't light up either, compared to another X310
that does connect. There are times when the connection works, but then it
fails again.

Can anyone tell me what is going on and how can I fix it?

Thank you very much in advance.
Best regards,
Anabel

--000000000000392fe405f82e22ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am working with a usrp X310 equipped with =
two TwinRx and I am having connection problems. When I connect it to the PC=
 the LEDs on the 10G Eth connector do not light up. When I open the case I =
can see that the internal DS16, DS17, and DS1 LEDs don&#39;t light up eithe=
r, compared to another X310 that does connect. There are times when the con=
nection works, but then it fails again. <br><br>Can anyone tell me what is =
going on and how can I fix it?<br><br>Thank you very much in advance.<br>Be=
st regards,<br>Anabel<br></div>

--000000000000392fe405f82e22ff--

--===============3662406284425934737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3662406284425934737==--

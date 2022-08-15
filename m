Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB65930DE
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:37:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E12E381405
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 10:36:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660574219; bh=SLU4thrqhgicAFm5zad3wCa73nWZs5CiH2zUus2S7mc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xLFq7CetoiZS+0gjE4su+UnkeKpS7VvURPCSMaExaiYt+2SVRIASZuQox8oUxMogC
	 3jV9JhOtY8j12xMuqnOaG1AxsY5edTr9ytPLqA/1WLr5BSRRXTAD7N3LMau+cVbAjM
	 qF+I1e5gkZDE/4xROWX7DgbKOt0Y/sATZ80/ERkLDZTSmyNfrRLWv8Hs4bfnEaFmxu
	 xu5s1uPLMaBFE/GubigCDZnDYAHxdC0okQr/FWyukhyomJGxa1Xo9oOuGy8rA5bTAQ
	 rVsr0zvtBZTlbgqmAKSr94dn+V6bi/8FQxvG5rc8xD0bjvMCx3ZVUYHqiz0Ym+km25
	 XSUsrXbOuaaKw==
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 4ABB33813BC
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 10:34:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HP6E61vB";
	dkim-atps=neutral
Received: by mail-io1-f54.google.com with SMTP id x64so5965801iof.1
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 07:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=me3KUfkSnyqCr3Q//oB6GDdRJSXwuDLPiqshD1PNolY=;
        b=HP6E61vBM7otumfGK5oXkJ6VJbflvo6yf743T27tnaA+9oTJWi5P/l/UhgJAHwCOs9
         uf7T370tqaODiWb32m+3E/ptjiLS2qsouk13RiYhuzwhTjsIZbzTyaEay3Zb/+pe2HK5
         bv90hT/7pW75+JhC3Lx482mR0TGWusn8HsVbfgwzz7XdzSzNtgLPAC4S9vQ+HnT3wWL7
         YVvt3ikq+IWrSZ77Dtz17/38Dvy+7UMKjbyNK1alchyEAjlCwl3V12+Mp5aXr1U27lH1
         akp+78gBV/dMY5KXYVexsPjdYYwBS7lp5XhGQMgcXuYfd9OjIVDCVxqE1wZdXvzUAr5h
         ygMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=me3KUfkSnyqCr3Q//oB6GDdRJSXwuDLPiqshD1PNolY=;
        b=3FuUoID6kL9vmAhaRhaqWZXjnX2/CKzGvk0GXzSz3HXPL8R8NGnkEqjMAcRKt2oqzJ
         O2OweNewqwqRcXIJGIyrQ6XdDttN8paMZwGx4QBuddq+ryLXHcjKCWBs7AsoUNDRyzbO
         KzMAt+Ybfj6tAfqqjCp5Rut7jydxJUCtAQxTxAOZtBY+TZIrWr9zE7VXPN9jpmSCvr6Y
         Np3lIGSvjJpcGNb/C1BjhH1jDrIMD+vIcEomkIomiQH7Afj9AGDYq2VVAJPrHMFSxs98
         +tO6ZZpVJVlDuZVY2MCYm6xAwW/aUsH79bQW7rlxeVy1msCCZYahoHbsOGf4w5qEkC2/
         Ektw==
X-Gm-Message-State: ACgBeo0wUD67wDPICq1BD0megP8DvZ5vROASFJLkjuwNoN4KtyQ1iffB
	M5WwFiESeRQ7siKja2Fm3ZA/CI6qysqJEeCGRw3F6d16uhY=
X-Google-Smtp-Source: AA6agR5j7oaW1dNpoQdvZrTG2Lbq6bwkwk6ILkeq9pWMSY0TfKSiTjwZ16yZ8eyV25OW/sNfe4YgEI/3sMkfTcg3pxQ=
X-Received: by 2002:a6b:190:0:b0:688:60b7:3174 with SMTP id
 138-20020a6b0190000000b0068860b73174mr1630043iob.76.1660574088215; Mon, 15
 Aug 2022 07:34:48 -0700 (PDT)
MIME-Version: 1.0
From: Dave NotTelling <dmp250net@gmail.com>
Date: Mon, 15 Aug 2022 10:34:37 -0400
Message-ID: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: KOAD7AMFBE74CGMMY67ZS6N2BMPNVDP7
X-Message-ID-Hash: KOAD7AMFBE74CGMMY67ZS6N2BMPNVDP7
X-MailFrom: dmp250net@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOAD7AMFBE74CGMMY67ZS6N2BMPNVDP7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1918740053109535444=="

--===============1918740053109535444==
Content-Type: multipart/alternative; boundary="000000000000a6c0f505e64888ee"

--000000000000a6c0f505e64888ee
Content-Type: text/plain; charset="UTF-8"

Apologies if this is a repost.  I don't think my original message made it
to the list for some reason.

I recently got my hands on a used x310.  It seems to work well, but for
some reason will not boot on its own.  Vivado hardware manager shows the
device as not being programmed, and the network interfaces don't come up
(no lights on the SFPs).  If I reflash the device with Vivado it will come
up and work as expected.  Is there a way to test the flash chip to see if
it's alive?  Running uhd_image_loader seems to work fine, but the device
still will not come up automatically.

Thanks!

-Dave

--000000000000a6c0f505e64888ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Apologies if this is a repost.=C2=A0 I don&#39;t thin=
k my original message made it to the list for some reason.<br></div><div><b=
r></div><div>I recently got my hands on a used x310.=C2=A0 It seems to work=
 well, but for=20
some reason will not boot on its own.=C2=A0 Vivado hardware manager shows t=
he
 device as not being programmed, and the network interfaces don&#39;t come=
=20
up (no lights on the SFPs).=C2=A0 If I reflash the device with Vivado it wi=
ll
 come up and work as expected.=C2=A0 Is there a way to test the flash chip =
to
 see if it&#39;s alive?=C2=A0 Running uhd_image_loader seems to work fine, =
but=20
the device still will not come up automatically.</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Thanks!</div><div dir=3D"auto"><br></div><div>-Dav=
e<br></div></div>

--000000000000a6c0f505e64888ee--

--===============1918740053109535444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1918740053109535444==--

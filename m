Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 813D937383A
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 11:58:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D27D384578
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 05:58:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="YvkXzDqZ";
	dkim-atps=neutral
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 849F3384040
	for <usrp-users@lists.ettus.com>; Wed,  5 May 2021 05:57:08 -0400 (EDT)
Received: by mail-ej1-f49.google.com with SMTP id w3so1894401ejc.4
        for <usrp-users@lists.ettus.com>; Wed, 05 May 2021 02:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=r3yF6FX3C16kMLb3Sqf6uOForj5q+5KMpAoN0OCU6lQ=;
        b=YvkXzDqZPUZA4bPmeYJ7jHdCW1CIOceUxvHMvUlXaGEBYCngW8jVayFFP8TTTfcaj0
         H8u1wcegSKOoHZRPycXprqOH99k98uuqIhCGQ4iV0DTCBPJqju1e3cuYfQEuOQJUiM4y
         QXyR+tSUzP4g3m5jB9g7BuM/1mlXpmm65cxJafceyvyCMLR/2XNKD1xwIR+Tgf8YCmIZ
         u3J6jVQJayN4toCyQJxd47i481WODy2oNBzpbaMdBOqXTvCIE7TldKE7wdA91/Gvv4pO
         oGnYV21FtnN2M04YMcO60KqHpTdpCIvxXxgmktXlDG0uwAOiUOQnu+Lpyh9xwrHXh8ea
         mQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=r3yF6FX3C16kMLb3Sqf6uOForj5q+5KMpAoN0OCU6lQ=;
        b=lguL0DDFWFF59yURbRvSJL898BANyf+TKMcZb3Qg4LKy0SuL4XKUHmMqIjfPm7blUa
         LDnupd3U810BLRy7AQJyd60RndHEZ0hifgek0EFgoRgDsa/63HOQ0F4o4aTHrCNfEqKY
         GbVWsdxvTfkw8S3IvQBbhEvbc5NTduirf9x3e/YRQgV0Wdy0f+iwgxaraOeSIveUlGCk
         WC8tCnIbGua96fRMxSCtES2iOJEzhTz8kLGwv8vI9WQdmjWdx/vKC43536278j+FgRe0
         nQAIrH4PzKbvHIBs3MOEOzvPN6yrOF6gjKXKAdUPddSjziPOOnHLjgn84CMSyGP5y0ri
         Ym4A==
X-Gm-Message-State: AOAM530kevlld7iwjY091m4x8cPR75r2lz5x+QoyMdkelGjsJSfKo+9p
	+bo4fxzVDdPn7HExQdwNhfR8iCLDsY3bXLE8jGqy5Q2tZVvwgQ==
X-Google-Smtp-Source: ABdhPJyVtoKjWXR3ZDTnPfoP2pTuoyTSdiRgfUkKK5WUL88zRSDniTeqmgUefcLytZ66xJ4DKkZRdveaExM6LWRR+IU=
X-Received: by 2002:a17:906:2dc6:: with SMTP id h6mr27156049eji.477.1620208627177;
 Wed, 05 May 2021 02:57:07 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com>
In-Reply-To: <CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 5 May 2021 11:56:56 +0200
Message-ID: <CAFOi1A6E1Yo9bNvN-HNuBig32JnvgibgbpHqfOZ2vQpthD4OmA@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: OD2WB5OI2S5SRPUKWHLYUKSHA4Y6HJYH
X-Message-ID-Hash: OD2WB5OI2S5SRPUKWHLYUKSHA4Y6HJYH
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The operating system cannot be started when B200 is plugged into the computer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OD2WB5OI2S5SRPUKWHLYUKSHA4Y6HJYH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7060660950718844953=="

--===============7060660950718844953==
Content-Type: multipart/alternative; boundary="000000000000af7eb205c19237ed"

--000000000000af7eb205c19237ed
Content-Type: text/plain; charset="UTF-8"

Not sure if this resolves the issue, but have you tried running the custom
bootloader?
You can run /usr/lib/uhd/utils/b2xx_fx3_utils -Q to see if it's installed
correctly. b2xx_fx3_utils -B /path/to/images/usrp_b200_bl.img will install
it. You should run usrp_burn_mb_eeprom --read-all first to dump the EEPROM
contents, just in case something goes wrong with the bootloader flashing.

--M

On Thu, Apr 29, 2021 at 6:12 AM Damon qiu <qiu.guowang007@gmail.com> wrote:

> Hi all,
>
> In one of our applications, we need to integrate USRP B200 and computer
> into a mechanical mechanism. So B200 is always connected to the USB port of
> the computer.
> In this case, the computer may not start, or it may take a long time to
> enter the operating system.
>
> Is there a solution? thank you.
>
> Best regards,
> Damon
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000af7eb205c19237ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Not sure if this resolves the issue, but have you tri=
ed running the custom bootloader?</div><div>You can run /usr/lib/uhd/utils/=
b2xx_fx3_utils -Q to see if it&#39;s installed correctly. b2xx_fx3_utils -B=
 /path/to/images/usrp_b200_bl.img will install it. You should run usrp_burn=
_mb_eeprom --read-all first to dump the EEPROM contents, just in case somet=
hing goes wrong with the bootloader flashing.</div><div><br></div><div>--M<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Apr 29, 2021 at 6:12 AM Damon qiu &lt;<a href=3D"mailto:qi=
u.guowang007@gmail.com" target=3D"_blank">qiu.guowang007@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi all,<div><br></div><div>In one of our applications, we need to =
integrate USRP B200 and computer into a mechanical mechanism. So B200 is al=
ways connected to the USB port of the computer.</div><div>In this case, the=
 computer may not start, or it may take a long time to enter the operating =
system.</div><div><br></div><div>Is there a solution? thank you.</div><div>=
<br></div><div>Best regards,</div><div>Damon</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000af7eb205c19237ed--

--===============7060660950718844953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7060660950718844953==--

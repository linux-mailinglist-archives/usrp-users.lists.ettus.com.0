Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3701765C916
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 22:58:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F7683842ED
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:58:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672783124; bh=g7zCDa1UuCEULI/P09uNUV0Wdp/7z/x11vRh1AkLdqc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=i9SjZzhzRT7Nf5B/3NGCbqfoJrNI154ceAY3SRBdtPpVLY8WBU4KTzYA76L0upman
	 K6pz4rrjJNh5hU0UC3B/+C3PoARWDkfPXVYhkOg7QP/vwibJ/otPt4/Ya+29TJYuuU
	 cTfLtxHWeF4A0Y+iovA0BIbvrFaJH5HewkrFXzFzZcaKAoeOm+XnSRouU6E936tRzH
	 utDqXHAi4Ho0dIWYyWnxE0wow7Zbj0F3/9OlUG/B/+U0uYPkDh93mZsgAw04548xYF
	 9hXhu/E/ae/TMICWpXGtLN+yvdZF7eWzXDU35xNDl3uT7FGd+8hQEYH5Cv0dYFLNsT
	 2BAUZN6tUS9SA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 622453842CD
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 16:58:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="OrcUmw2X";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id u9so77673483ejo.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 13:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PxUSBSnhmJT8vt1jD1tD7uP7RSq+b/ApKaQLVFyX4F0=;
        b=OrcUmw2XXeeh/UO7hkjSn7WQC3ygIkXPzbYuo2+l/nDglgRJR6aiQpKMoRIYzkRwUq
         qlHxjMze/rYyC8xt50x+F01WXHvzuhnVyizb+XowH6pPpjB2k6ObOiBffvxuwjjwinuf
         sUPuW1P6kXLmKAXWAeA1Cubfbwm3+7J49D4IqT+cAVfHvXJkYbQn8YkSjb13FlHPMwuB
         KNrBHozeIgxcvyGycxMUG3DmNr6R0ANteXo5Sl0Fb+qDj8AxmRDFGdDthTvJGLUQy1uT
         N4QhPSi1IwRKIv3f+qayrDk7GQK5Hlcf8R1M3ZpbIs62n+HS7PphydekxtIreII6rJcI
         zxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PxUSBSnhmJT8vt1jD1tD7uP7RSq+b/ApKaQLVFyX4F0=;
        b=T5MwNS9KzPxv6Mm63uP/v8OdcuocYWh42KluG7xUAV4abWT6ZaYKJgGqMdQYl5Zvxw
         vku2JhdCBo97gxiUA6Bc64BEcW3bnIrcgfQq9nOWZeB8oo0Lwc9rjxTNfy7RXsJGRzvM
         USRNtJwbsfBc2gYZ0GdjLmK3+RAWWH8JglD40lJ3cmS3XcSYeZevhnxhha/3jR3umgmy
         v8jC9idsDR9J5Rkrwme2K49P8OgEjM1Kgdab/uglGE5YtfRy7ojggf2t4g9uJRjZ6SMO
         0PvHUIgHILchqKBr+C1gktmncUs37SvQVk0hgAe5v6wfTXFeOat4TcahjqOLDZd1cjeg
         oOCQ==
X-Gm-Message-State: AFqh2kpw9uu3M68Uqw2Zyk0KAwZynHLEUhgsqhz/ENRGkce6AiLKzxin
	dZ5xBm6oonLxMQzrbK0awblQRNyjvd5IXcP90jC7F4MHsu/GJR3N
X-Google-Smtp-Source: AMrXdXvkk/GT9kMkclmg73yAcgrOYZcMXa45Ku2c+i/bSa0rZ4Z6phe3iTxOKD+yAc6gPbBzdrP06AXDn4bFB4ANCRE=
X-Received: by 2002:a17:906:24c3:b0:82b:6411:25fd with SMTP id
 f3-20020a17090624c300b0082b641125fdmr3664160ejb.378.1672783117323; Tue, 03
 Jan 2023 13:58:37 -0800 (PST)
MIME-Version: 1.0
References: <sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA@lists.ettus.com>
In-Reply-To: <sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 3 Jan 2023 15:58:21 -0600
Message-ID: <CAFche=ii=PqwC+HPOUrJ7MdQg5JrZe9Wyuwohaz4FwaC-EQQkA@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: AU6P2KI6N5YF4EQ42A2DSNRGATHJCI3V
X-Message-ID-Hash: AU6P2KI6N5YF4EQ42A2DSNRGATHJCI3V
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building x310 FPGA image for UHD 4.3.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AU6P2KI6N5YF4EQ42A2DSNRGATHJCI3V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0416473648964894831=="

--===============0416473648964894831==
Content-Type: multipart/alternative; boundary="0000000000007ea73c05f1632bce"

--0000000000007ea73c05f1632bce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh, thanks for pointing that out! Maybe that was correct at one point, but
the patch is definitely required for X310 as well in UHD 4.3. I'll see that
this gets changed in the manual.

Wade

On Tue, Jan 3, 2023 at 3:19 PM <ri28856@mit.edu> wrote:

> I noticed that part of the manual but ignored it because it sounds like i=
t
> only applies to the n3 and x4 family of USRPs, and I=E2=80=99m using an x=
310. Is
> that not the case?
>
> Regardless I=E2=80=99ll work on installing the patch and try again.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007ea73c05f1632bce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh, thanks for pointing that out! Maybe that was corr=
ect at one point, but the patch is definitely required for X310 as well in =
UHD 4.3. I&#39;ll see that this gets changed in the manual.</div><div><br><=
/div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Jan 3, 2023 at 3:19 PM &lt;<a href=3D"mailt=
o:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><p>I noticed that part of the manual but =
ignored it because it sounds like it only applies to the n3 and x4 family o=
f USRPs, and I=E2=80=99m using an x310. Is that not the case?</p><p>Regardl=
ess I=E2=80=99ll work on installing the patch and try again.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007ea73c05f1632bce--

--===============0416473648964894831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0416473648964894831==--

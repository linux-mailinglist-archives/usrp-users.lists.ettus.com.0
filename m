Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F12359FB6
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 15:22:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8C84383F0D
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 09:22:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="Od92+QVY";
	dkim-atps=neutral
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	by mm2.emwd.com (Postfix) with ESMTPS id E9F0E383BA2
	for <USRP-users@lists.ettus.com>; Fri,  9 Apr 2021 09:21:54 -0400 (EDT)
Received: by mail-ua1-f50.google.com with SMTP id r20so1814422uam.6
        for <USRP-users@lists.ettus.com>; Fri, 09 Apr 2021 06:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f40wBHSit0r0SJiNoHXwazKAMLH8w6kGPfirwa/3GRo=;
        b=Od92+QVYWRk2Cu8PgG7iY2vtDW3MQsUVI01nc3vxsWY5F5h/E+W1c/oKvHas0vDiUL
         5fdYMbUB0momu+XY6z58C6YDsAZ/GJtlYDcIBQUh02oM6ZRlK5mgZqagPTjmcqxa5aD2
         isYVAoa9+/58NKbPpamGjrra8HYQK4eif9+scTb/qtP5fZj0B+0YpcmBJjBaxepQvrxw
         /kvovNPbP/7L/GCPJxP+3pC3mn9X3FqT07CXNzm9y6oyR65lmgMiDTNkV2yvHenMSyr1
         oIAuA2+iipAQAxZ3AS/tiTy0kCursgyKLyV66ZwLehNlQY60+NHQf+jBU+angFxRl5Qo
         51ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f40wBHSit0r0SJiNoHXwazKAMLH8w6kGPfirwa/3GRo=;
        b=YJ1n5j1LLvGW6+MXjvugc+bxtFFg8Qs9LwGW7vJ8oYus94vh5F4qwBW4mwECmpPja6
         rVbrKvUsCJJNfyKYxXHbK+cc0DPvei8CiE7U7mK0KkyzJqJ7e6AamusGemlFHOgN2e7e
         Vx4exMH3h1/uGU9D2rrNsBR+o4dT6Flo4nrL5+OqzAeoudLn7th6S68W/zcXf1k9Gbei
         pful5qZFTDuGbrUPilFpHhKkJQqpZib8vZVIZmy9OY3+WzuNC09hIm8ZrVsRLTpxwXnX
         77B53dCl8FUfNEBTykJpVesmXXuGMC3UULyJ6NZu143kycOa9ETMbwJta5ETtUEei7iy
         /qwQ==
X-Gm-Message-State: AOAM531CcrsyCP8UZfnOVxVKAwpVYgqpmt3abcSfFk1X2W1CaxsGR5Bh
	ganASnDux3a0i+vT/FsdXwUkCUgb4dh6OscaOUmPxQ==
X-Google-Smtp-Source: ABdhPJyNEF7BWx4bOr5XciiTLWtVN3wftU5qRGAq+lN4Nxatf8Nx61H0tHcP+suEZBiGZvo8W8iFJT/jxjX6t+VrPvc=
X-Received: by 2002:ab0:7316:: with SMTP id v22mr10685040uao.134.1617974514308;
 Fri, 09 Apr 2021 06:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <iVbUuFmZVFVKDWMbOURAUQzvwLbG1KmpiwKaxhKdTE@lists.ettus.com> <FBA6FD22-7EBD-409E-B02E-344C0C33CCA8@gmail.com>
In-Reply-To: <FBA6FD22-7EBD-409E-B02E-344C0C33CCA8@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Fri, 9 Apr 2021 23:21:43 +1000
Message-ID: <CALNMZ8UbTDMfJNchQ=Lp4d=7DKYz9kmDgvJajVt+-fbkU1BvXQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: MZQNP3LZXJBHDNRNECGICP6CXGLR4P5M
X-Message-ID-Hash: MZQNP3LZXJBHDNRNECGICP6CXGLR4P5M
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DC power supply for B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MZQNP3LZXJBHDNRNECGICP6CXGLR4P5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3771941293862125457=="

--===============3771941293862125457==
Content-Type: multipart/alternative; boundary="0000000000002e6cc805bf8a0c74"

--0000000000002e6cc805bf8a0c74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus.

Regards,
Brendan.


On Fri, Apr 9, 2021 at 9:49 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> 5.5 x 2.1 is still correct.
>
> Sent from my iPhone
>
> On Apr 9, 2021, at 7:09 AM, brendan.horsfield@vectalabs.com wrote:
>
> =EF=BB=BF
>
> Hi All,
>
> I am looking to purchase an external power supply for my USRP B210, but I
> can=E2=80=99t figure out what size connector I should get. I found an old=
 post
> where the specs were given as outer shell =3D 5.5mm, pin diameter =3D 2.1=
mm,
> but that was in 2011 for a USRP1.
>
> Does anyone know what the latest specs are on the power connector that
> plugs into the B210?
>
> Thanks,
>
> Brendan.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000002e6cc805bf8a0c74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Marcus.<div><br></div><div>Regards,</div><div>Brend=
an.</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Apr 9, 2021 at 9:49 PM Marcus D Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">5.5 x 2.1 is still correct.=C2=A0<br><br><div dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 9, =
2021, at 7:09 AM, <a href=3D"mailto:brendan.horsfield@vectalabs.com" target=
=3D"_blank">brendan.horsfield@vectalabs.com</a> wrote:<br><br></blockquote>=
</div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi All,</p><p>=
I am looking to purchase an external power supply for my USRP B210, but I c=
an=E2=80=99t figure out what size connector I should get.  I found an old p=
ost where the specs were given as outer shell =3D 5.5mm, pin diameter =3D 2=
.1mm, but that was in 2011 for a USRP1. </p><p>Does anyone know what the la=
test specs are on the power connector that plugs into the B210?</p><p>Thank=
s,</p><p>Brendan.<br><br></p>

<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></blockquote></div>

--0000000000002e6cc805bf8a0c74--

--===============3771941293862125457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3771941293862125457==--

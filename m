Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 065AF36B4AE
	for <lists+usrp-users@lfdr.de>; Mon, 26 Apr 2021 16:17:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A63C383F7B
	for <lists+usrp-users@lfdr.de>; Mon, 26 Apr 2021 10:17:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Z9St8Mwl";
	dkim-atps=neutral
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D0C6383C21
	for <usrp-users@lists.ettus.com>; Mon, 26 Apr 2021 10:17:08 -0400 (EDT)
Received: by mail-oo1-f51.google.com with SMTP id i3-20020a4ad3830000b02901ef20f8cae8so4996175oos.11
        for <usrp-users@lists.ettus.com>; Mon, 26 Apr 2021 07:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mws9+PU0J5s0rLtU7MN2eF2XUn+jqqISU0gEE8lYz3A=;
        b=Z9St8MwlDslrsbT/tWqkOxQ4QeWiQuWOMgFhmeRiSaHk1mzpok3WW6tybVVzg8Kyd+
         6qbwkdxpqMZAUcVOqyQwyH+1pG0uFQhYI5vXPDJHxW65eE6X8Wb1BSczLnrrAsTmOGKV
         0/CjhZbxMjG9f2xGYXS3AzvIKI7szx2hdEnS9FfMwGY83LqSbU+c0HaTcm0a7taUY4fa
         q3oeM8Uy9lWY8m7EK0stkJl1NVhSiLrxZKp1cGfYFcRCMzjLqL0jr1SNto4TeKKHQaBh
         xxDoqfeUcyyPEdpldEO1X0XlQFhPHBhUuLRLD9Chr2FuOGJ7nJFNfoaJwQhRI09sbNhS
         3fxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mws9+PU0J5s0rLtU7MN2eF2XUn+jqqISU0gEE8lYz3A=;
        b=cRHKDd1JM9MdTHgtHiGNvJ9muR5z/PBr6HktcsSmGsBOr+NquUVgLQI/4B4XVpdLTF
         Qi0I7VxPS4uFzIxeIMwNj9F9vUsxP6sUTM45cNVB347qkUSjUovKgrKYXQilCRQAk30p
         rDgYsNUC1YglqWhOUpd82L9eHxXwnibpLp2pmXnvevVM3ft+mncEWhPe4w3FnjnGxXEY
         cVOqI5CFGFFRq4jd8ZUV0uvvYov6CnKxVWw/7BhaQggLpYYZf8C0o8eaD7rxWZ7cKV+P
         0zS9efVjcxwViDCYI7FcER/2o4CHoXI3D85YPYYWZQfV4l6uW6TTdoNKglA+WAqtpzmJ
         jB6w==
X-Gm-Message-State: AOAM530M35/A2uysQdJGTlAob5O+DcU84b7FnB4RMd9ZJ0D7hzAVPLtT
	Fp/FCpWUyTVtFEyUy6JmznGhpExaSNcTMZnL1HPNhg==
X-Google-Smtp-Source: ABdhPJwDKe9u9GCC4ymNM+W9uIUlo3VzLBseROiSzh6RihgQL5/KicOuZMkFe2voAs0X4ukPQ8lD8wDaL4sYWYpsWVg=
X-Received: by 2002:a4a:a6ca:: with SMTP id i10mr13553538oom.62.1619446627472;
 Mon, 26 Apr 2021 07:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <afrI1ohNJXJ6Ob0xFhzmPAYUk5HagpPKVlWvD3WDsLU@lists.ettus.com>
In-Reply-To: <afrI1ohNJXJ6Ob0xFhzmPAYUk5HagpPKVlWvD3WDsLU@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 26 Apr 2021 10:16:56 -0400
Message-ID: <CAB__hTTDUO6rmaLtztuUr0x5P7Tcny5i2Ab4vjohRG34=2pnMQ@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: 5AKXR42P2BNVGBCD47WOU24IVHRW2RFQ
X-Message-ID-Hash: 5AKXR42P2BNVGBCD47WOU24IVHRW2RFQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5AKXR42P2BNVGBCD47WOU24IVHRW2RFQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6892990837458293237=="

--===============6892990837458293237==
Content-Type: multipart/alternative; boundary="000000000000f6e33805c0e0cc65"

--000000000000f6e33805c0e0cc65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,
Yes, it works the same for the context port. Yes, all these signals follow
AXI protocol.
Rob

On Fri, Apr 23, 2021 at 6:38 PM <jcasallas2019@gmail.com> wrote:

> Rob,
>
>
> Does the same =E2=80=9Cthrottle=E2=80=9D works for the context port side?=
, in the rfsoc
> specification, the timing diagram (payload and context) tready in both
> always are high which throw me off a little. I was thinking that these
> signals work in the same way AXI protocol.
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f6e33805c0e0cc65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div>Yes, it works=C2=A0the same for the context=
 port. Yes, all these signals follow AXI protocol.</div><div>Rob</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Apr 23, 2021 at 6:38 PM &lt;<a href=3D"mailto:jcasallas2019@gmail.com">j=
casallas2019@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>Rob,</p><p><br></p><p>Does the same =E2=80=9Cthrot=
tle=E2=80=9D works for the context port side?, in the rfsoc specification, =
the timing diagram (payload and context)  tready in both always are high wh=
ich throw me off a little. I was thinking that these signals work in the sa=
me way AXI protocol.</p><p><br></p><p>Thanks</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f6e33805c0e0cc65--

--===============6892990837458293237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6892990837458293237==--

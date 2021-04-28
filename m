Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377236DEF2
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 20:25:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 152C938482C
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 14:25:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="I1Ue2vn6";
	dkim-atps=neutral
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 62CD8384044
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 14:25:01 -0400 (EDT)
Received: by mail-oo1-f48.google.com with SMTP id c6-20020a4aacc60000b02901e6260b12e2so11599423oon.3
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 11:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Kf+CwW0OPXg//IhlJk6o1r03mGZx8cYLUUJNK3KHFI=;
        b=I1Ue2vn6Su8n7uPogVpZpBMKYt+VfLlKvVTz20K7r0zlUe4m3dwe9+v0oos5T2waqU
         IfU8JNFvFjMa7aVv3HiUY0e3o3jMCozqGR5M2KhLjxhD6GD9OGZnIssnwZw96T4c9fVu
         vZRdhezdOuO6ZcjwJXcBtvb5zkJbi5lsbQzCwXyQoy1L7P/rEdlfBNJWm+OH1P3dpNqk
         +cgS5ko/8NJ7nlARlq8EaAVGkokn8fdp26nC/zvAzuugk4z22nUTtxpSsvRhL/3NJzWe
         bp0sISfAHVyLocHiYHYSevKqfUjl9Ed9CVVIFUelFym2qKPd9179GIQI1bdGgDw8V+Fc
         1M3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Kf+CwW0OPXg//IhlJk6o1r03mGZx8cYLUUJNK3KHFI=;
        b=beGKyPJX0IKd6Ac9msTGc0YW17nWcilC1v9DYKr4bwqPaHMU0zuBC/sRGzUmzwgmqT
         Z5vmKa0ZeDGTh8BFLb8rmi+il1DRpLNnkdCctk7ln9semcApaAjiKU757vYrqyQdxr7J
         mMjJbPhXOqrJsxyWAdTrAQHyE1cIB2rt1EJvmo/Ko5vpryjkX0x1e+OqsyAfg0Hnb2O4
         6ymsoEWMDkX/bmFvqH7QkuJZdGj+yi42PeqcvhTJLu5YbDhKGCuHuBMnUcnx9wHT6vOO
         S/YqbyxYV2zdeZM3t2syr5yEvU9+/kjSP5g97bzc+cEYpgPu25NbsrowlxoSEkxopKHT
         /gBg==
X-Gm-Message-State: AOAM530BZLDIq7UacuChyOfhMs+EGRIbqa2EpXn37NSINHFbqe6eEya3
	V6pIMHmWJ2iaD0COwh5VsNtrpaUv6XMeue5CrY4npg==
X-Google-Smtp-Source: ABdhPJwtN24VAbUSAx8tu4AHdZnGwgA9IaZ5/2ypo8pyG+zpvDOcK4ibbwCqV/7vou+/s4tI+IVspLtmk3YqS4F1iKk=
X-Received: by 2002:a4a:b997:: with SMTP id e23mr23740126oop.13.1619634300537;
 Wed, 28 Apr 2021 11:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <xVIU3Hqv82WzXtEycS1hlEruuqfXj9xDNy6DpTXyc@lists.ettus.com>
In-Reply-To: <xVIU3Hqv82WzXtEycS1hlEruuqfXj9xDNy6DpTXyc@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 28 Apr 2021 14:24:49 -0400
Message-ID: <CAB__hTTJTVwEaK29jsmXrpbHGQM3E74NOwyiPbtYfFc70sgrAA@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: JYKYI2T7LQE2B3ISPQX27VPSQAF3T3KR
X-Message-ID-Hash: JYKYI2T7LQE2B3ISPQX27VPSQAF3T3KR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JYKYI2T7LQE2B3ISPQX27VPSQAF3T3KR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6756690877162641232=="

--===============6756690877162641232==
Content-Type: multipart/alternative; boundary="00000000000026a09d05c10c7f3d"

--00000000000026a09d05c10c7f3d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So, RFNoC 4 provides three different interfaces as noted in Section 2.3.3
of this <https://files.ettus.com/app_notes/RFNoC_Specification.pdf> doc.
The first is a CHDR based interface (2.3.3.1), the second is the payload &
context interface (2.3.3.2), and the third is the "axis_data" or "sideband
signal" interface (2.3.3.3). Take a look at all of the block yml files for
the Ettus blocks and you will find examples of all three.

When you specify a given interface in the block yml, the auto-generated
noc_shell will be built based on that interface. So, my point is that if
you decide to change interfaces, you need to start over. And, be careful to
save anything of value beforehand because the auto-generation will
overwrite what you presently have. Let me know if this doesn't make sense.

Rob

On Wed, Apr 28, 2021 at 11:48 AM <jcasallas2019@gmail.com> wrote:

> Rob,
>
>
> I was following the design based on the RFNoC 4, reason by which I was
> using context and payload. Can you point me to the documentation where I
> can see the timing diagram of the AXI signals for this fpga =E2=80=9Caxis=
_data=E2=80=9D
> interface?. In the RFNoC specification, I only see the context payload.
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000026a09d05c10c7f3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So, RFNoC 4 provides three different interfaces as no=
ted in Section 2.3.3 of <a href=3D"https://files.ettus.com/app_notes/RFNoC_=
Specification.pdf">this</a> doc.=C2=A0 The first is a CHDR based interface =
(2.3.3.1), the second is the payload &amp; context interface (2.3.3.2), and=
 the third is the &quot;axis_data&quot; or &quot;sideband signal&quot; inte=
rface (2.3.3.3). Take a look at all of the block yml files for the Ettus bl=
ocks and you will find examples of all three.=C2=A0</div><div><br></div><di=
v>When you specify a given interface in the block yml, the auto-generated n=
oc_shell will be built based on that interface. So, my point is that if you=
 decide to change interfaces, you need to start over. And, be careful to sa=
ve anything of value beforehand because the auto-generation will overwrite =
what you presently have. Let me know if this doesn&#39;t make sense.</div><=
div><br></div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Apr 28, 2021 at 11:48 AM &lt;<a href=3D"mailt=
o:jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><p>Rob,</p><p><br></p><p>=
I was following the design based on the RFNoC 4, reason by which I was usin=
g context  and payload. Can you point me to the documentation where I can s=
ee the timing diagram of the AXI signals for this fpga =E2=80=9Caxis_data=
=E2=80=9D interface?. In the RFNoC specification, I only see the context pa=
yload. </p><p><br></p><p>Thanks </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000026a09d05c10c7f3d--

--===============6756690877162641232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6756690877162641232==--

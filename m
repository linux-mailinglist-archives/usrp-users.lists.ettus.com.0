Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B783B1CDB
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 16:49:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09D843841CF
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 10:49:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="r5caMTgB";
	dkim-atps=neutral
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B83C383909
	for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 10:49:01 -0400 (EDT)
Received: by mail-ed1-f42.google.com with SMTP id s15so3809731edt.13
        for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 07:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=flE1+I5pWsp6j940fdltS9EIV45dfmpKxeGHAEuwaAs=;
        b=r5caMTgBumaGQBogTNSz0pudGBU7iXwCKS+s1e6yLVANGkGi93J1+g4zZyOKEjXdZu
         yF5lCPA7efeqnRaGBIt64INKYcPzllHsxny+tCk0JsM7iq5ZAB/1s3h+GyAdYf1aBpLq
         KE1dV/dGc0b2gZYY3iwGdUHkDTFRd+SBBtiZm/A24xDBYoxZ11CWKODBbOQkwRpgls1C
         RU8Z8adzCtvQ6JCvd1uF2NPReZjH2J/A0hr1ARDI3xEy1QYjPlQRNGqnsMq7mDs+HQ+N
         lCjjd6f8C5N2I6rbxRtomZZVYrXj3zh8iOZ0VJMgRDpE7yqCo4ORs/7mPpHpgN6eUb/w
         mg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=flE1+I5pWsp6j940fdltS9EIV45dfmpKxeGHAEuwaAs=;
        b=CWG0+OPL20H6y76yBSwWXZX4G9PMbsC4TOjhbhpm3ox0MRNhKdtGqX2SCrAOxZS9ll
         +K7BKo8KC5JflGXg7ZSJ1I4EBhBCGG4Non5RaRErSWpKk6aVrbeWfXH+Hmh33xW6IDH6
         6nN46vJ8UWc3S7Ef2tDbvsSur7RVgcIGR8r8/Minz4sZZ3d6LiAZfrCq0zOK98MXk1mq
         ZD2ErestAwUY1tLUWb/vS1df4wksyTcIk/JVUVe5GW7MkqpU3xNbgPpFDQIZKgC0KGJz
         DAqqvhZl7vfIgDMeJIl+97CEpYPQKAFmpE5z/0GSfTCedE5crhUJjtUn8he3iiZvo74v
         279w==
X-Gm-Message-State: AOAM531k7KeVDglo1sQzM4XOsRCYaNHh1vznZLXKPQSRrieTq8uYtbD7
	3Ws7N1cykt414vXKIkbs+zkg8oL4bZlO5DGjNhWG5Jw6
X-Google-Smtp-Source: ABdhPJyEsYefuSdsCVy9PWPCHzemv/eKqmmGldgPxN9LsXXuIQAA84xMvPJgOXN7ChMbbLL8lZ6U746d7FR2yuAhw6I=
X-Received: by 2002:a05:6402:402:: with SMTP id q2mr35176edv.239.1624459740518;
 Wed, 23 Jun 2021 07:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAKazox0Np_582yPH4wv-aK3E8RmNS6t-AR2d=uca4L+ZshfqSg@mail.gmail.com>
In-Reply-To: <CAKazox0Np_582yPH4wv-aK3E8RmNS6t-AR2d=uca4L+ZshfqSg@mail.gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 23 Jun 2021 10:48:49 -0400
Message-ID: <CAGNhwTONgQ=yLgn_2oTjoUD=jYEsRnaUSLy3AM5-YZ++cMmrnw@mail.gmail.com>
To: Daniel May <danielmay83@gmail.com>
Message-ID-Hash: HH4KHPCU7IS5SM7NFCXXJ43DW65F3DMC
X-Message-ID-Hash: HH4KHPCU7IS5SM7NFCXXJ43DW65F3DMC
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 EOL Schedule?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HH4KHPCU7IS5SM7NFCXXJ43DW65F3DMC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9129893781640161758=="

--===============9129893781640161758==
Content-Type: multipart/alternative; boundary="000000000000c929fd05c5700199"

--000000000000c929fd05c5700199
Content-Type: text/plain; charset="UTF-8"

Hi Daniel - There is no schedule to EOL the E310 or any other
currently available USRP. - MLD


On Wed, Jun 23, 2021 at 10:20 AM Daniel May <danielmay83@gmail.com> wrote:

> Is there currently an EOL schedule for the E310, or will the E310 be
> available for the foreseeable future?
>
> Thanks,
> Daniel
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c929fd05c5700199
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Daniel - There is no schedule to EOL the E310 or a=
ny other currently=C2=A0available USRP. - MLD<br><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 23, 2021=
 at 10:20 AM Daniel May &lt;<a href=3D"mailto:danielmay83@gmail.com">daniel=
may83@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>Is there currently an EOL schedule for=
 the E310, or will the E310 be available for the foreseeable future?</div><=
div><br></div><div>Thanks,</div><div>Daniel<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c929fd05c5700199--

--===============9129893781640161758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9129893781640161758==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A597145DFA5
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 18:25:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F5E8384837
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 12:25:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=g-clemson-edu.20210112.gappssmtp.com header.i=@g-clemson-edu.20210112.gappssmtp.com header.b="VDJ6dFDT";
	dkim-atps=neutral
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F133384316
	for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 12:24:37 -0500 (EST)
Received: by mail-io1-f42.google.com with SMTP id m9so8469388iop.0
        for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 09:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-clemson-edu.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QS6R1oLZBUv3ZN7P+eSeNObjfwc+dGn9fLtQFqoZRk0=;
        b=VDJ6dFDTMcwvHc3VVeKyX75f1fsQk3v+LRGyz7FWbMtHaquo8oPBu4E2Sxob5LoY5F
         JpulRuQX9D5LLhphA9KzUf48Uc2RJl78s1N/z7C5yIjdhKCktC50/yz5Ody7tbnHCnQI
         XJxwl4a1IrPI20MYCP06CCdpMLkwNUsxCtXPJ67YlYifPYYZSTST6aHsiltEUM6Npwyf
         RJlaxL8eq3r+G7lG5aQgmnaI+Q33UPcgLnDaaQSLwEvAd2IMKkTo/xDAr9tGCLWTQtJ5
         wWywbt6I+ASyTSU9zIOrknKfyoP+pl/iHgGGN1ECRGB5oftobOnY9fQZNyhJ6abdWQ9C
         4QAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QS6R1oLZBUv3ZN7P+eSeNObjfwc+dGn9fLtQFqoZRk0=;
        b=fWtBJSSyt4PVpWK9fNud7prFg/N9rk92t0HuuUkfHnKTdp52mmC9b5rL2xP0MhFcTc
         GVQ3E//6mNPZeoKHmxSyNvHo3cXsTNHxKWo0EgdsYuSMpbucA9VRvflTChC/UV6EY2O4
         X6fRy/Jsz3xrYetI5QERF654W/vVT60wq/BoZDz1vvY9b6mFlnbM+YWpNAmFor5v7xGd
         gCuRWopmXtZX0Y32bvhRsr1RtDQ532TKoU1Mc+hEYlwVlKgEWiX+9v9z5WNV0B62uk+w
         8jsYPfwe0qdOk0vywCja6fF5SUq+0FxHM+0gsC2QjECtjY3t3VEI16i3Z3XphtvRm9oU
         DRKg==
X-Gm-Message-State: AOAM531AWI6nBBwLqSGLSAKZIPlQPNR/HI4VIV2Nar0nP30N6UEmekvp
	b61ahEVUOQ/rH03luuqgQdE3MzrAwbifBKM71Jk9ww==
X-Google-Smtp-Source: ABdhPJz2bw4fHIdSkNMAPyw3M3tsfbWLS7N8xQEX+B2Z1+Ze57FZJDgQXkrvhz7pXdMtrnMSFe+oNO3NhvxZaSW7ybE=
X-Received: by 2002:a05:6638:41a4:: with SMTP id az36mr31561095jab.135.1637861075616;
 Thu, 25 Nov 2021 09:24:35 -0800 (PST)
MIME-Version: 1.0
References: <CAJ49BKjeiaLeK9-BqH59KYsA0L3D9w_jPF4ZXbFYVtC0zpfsxQ@mail.gmail.com>
 <0774a790-42f8-98cc-1f68-fee29eea9022@gmail.com>
In-Reply-To: <0774a790-42f8-98cc-1f68-fee29eea9022@gmail.com>
From: ChunChih Lin <chunchi@g.clemson.edu>
Date: Thu, 25 Nov 2021 12:24:25 -0500
Message-ID: <CAJ49BKjbNNcw9cvv0FSmbzWymRr6zN-cEC7Et3CrRTjmx-wfog@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ARI2YU4NCJB72HQ62DAUR7NUMLU3R3C3
X-Message-ID-Hash: ARI2YU4NCJB72HQ62DAUR7NUMLU3R3C3
X-MailFrom: chunchi@g.clemson.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10Gb speed on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ARI2YU4NCJB72HQ62DAUR7NUMLU3R3C3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4377911950491836716=="

--===============4377911950491836716==
Content-Type: multipart/related; boundary="0000000000009ae12005d1a03f04"

--0000000000009ae12005d1a03f04
Content-Type: multipart/alternative; boundary="0000000000009ae11f05d1a03f03"

--0000000000009ae11f05d1a03f03
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thanks a lot for your reply.
So, is there any way that I can check?

Many thanks
Chun-Chih Lin

On Thu, Nov 25, 2021 at 11:02 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-25 10:54, ChunChih Lin wrote:
>
> Hi all,
>
> I have a 10Gb PCIe NIC, Intel X520-DA1, installed on my desktop and
> connected to sfp+1 port with SFP+ DAC cable.
> I'm trying to verify the speed of the connection.
> I launched a iperf3 server on USRP N310, and a client from my desktop.
> The bandwidth is fat from 10Gb. The screenshot below is from my desktop.
> [image: image.png]
>
> Bath mtu of interfaces on N310 and my desktop are set to be 9000.
>
> Many thanks
> Chun-Chih Lin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You'll not get anywhere close to 10Gig when exchanging packets with the
> *CPU* on the N310.   You only see the high-bandwidth rates when streaming
> samples--the CPU is NOT
>   involved in that at all.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009ae11f05d1a03f03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Marcus,<div><br></div><div>Thanks a lot for your r=
eply.</div><div>So, is there any way that I can check?</div><div><br></div>=
<div>Many thanks</div><div>Chun-Chih Lin</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 25, 2021 at 11:02=
 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvon=
braun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-25 10:54, ChunChih Lin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">Hi all,
            <div><br>
            </div>
            <div>I have a=C2=A010Gb=C2=A0PCIe NIC, Intel X520-DA1, installe=
d on=C2=A0my
              desktop=C2=A0and connected to sfp+1 port with SFP+ DAC cable.=
</div>
            <div>I&#39;m trying to verify the=C2=A0speed of the connection.=
</div>
            <div>I launched a iperf3 server on USRP N310, and a client
              from my desktop.</div>
            <div>The bandwidth is fat from 10Gb. The screenshot below is
              from my desktop.</div>
            <div><img src=3D"cid:17d581fac65cb971f161" alt=3D"image.png" wi=
dth=3D"562" height=3D"285"><br>
            </div>
            <div><br>
            </div>
            <div>Bath mtu of interfaces=C2=A0on N310 and my desktop are set
              to be 9000.</div>
            <div><br>
            </div>
            <div>Many thanks</div>
            <div>Chun-Chih Lin</div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    You&#39;ll not get anywhere close to 10Gig when exchanging packets with
    the *CPU* on the N310.=C2=A0=C2=A0 You only see the high-bandwidth rate=
s when
    streaming samples--the CPU is NOT<br>
    =C2=A0 involved in that at all.<br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009ae11f05d1a03f03--

--0000000000009ae12005d1a03f04
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <17d581fac65cb971f161>
X-Attachment-Id: 17d581fac65cb971f161

iVBORw0KGgoAAAANSUhEUgAAApUAAAFPCAYAAAAcHDVzAAAgAElEQVR4nOy9X6gjWZrY+es/UJl+
6UpvQdMFtdH3Kje399DOUT4s6yeNxqgRTbKhgYFcrBe5kE3J1FZAuB4GMYkeYtOIWUgHRFP4Fqyo
0YvM5tMovElxKWGr4sVr/NCa9BAu19w/E06opmFmquplsxqmp/YhIqSQFIoI/de99/zgQqaO4pwv
zvfFpxPf+fN954033vgWiUQikUgkEolkDb67bwEkEolEIpFIJFef74f/uHXr1j7lkEgkEolEIpFc
YWSkUiKRSCQSiUSyNnJQKZFIJBKJRCJZGzmolEgkEolEIpGsjRxUSiQSiUQikUjWZvVBpdDpjyzU
DQoj2RYCVRWIfYuxMnuWX+hY/RGj0YhRX7/C/SiRSCQSyfbINKgUukVfP9SfUoFq9dHl6HYxokzd
aHB3X80LFSEgHBwuX8F+5VcbNZRhlXw+T75i4u5JjpW5/YhHd+5z/6a2L5FIJJKdkGFQqdKoKQxP
D/Wn1MUeeNTqBxpBUi1GCRFdoUaiYKM+1jYG765JJa9hz7Vt0R9F2l5lwJeKoNyuUwZQGxilFYaG
C+TfDYKcAt55jP0Ldfu6W5tHfPSTpzz9sc5PZotuP+Ij8ZKXD17y8sGnfPrmo6ni+3c+4tMHk/KP
7qwyLExoH7j/5qSNT48fTQ88p+R7yafHj5camKbLf5/Hx59Oyt9c7v420z8SiURyfUgdVAq9TsHp
YB7qmBLAPqFLjcZa0UqBEDueYlUtekaRy04QBasOUWptdjI2ETqN0oBmNT9p2+hhbTriK8oUGXLq
gsgpeJdnG25gUyyrf4HeyDFohv3XgdoW+m8t7vNYPOX46wGDuLKjpxx/9ZC3fvkWb/3yPT55/Skf
3QmKbz9Gv/Mx7332ll/+2Scc//j5pHzt9uH+m5/y/HX4IGjjvS/vod6JXHv0lONv3ufhL9/irV8+
5JNb7/D8+FFMTTFkkP/R8XPe4RO//s8+gB8ucX8b6R+JRCK5XqQMKgXlooIzWBwjyumTaFffUqd/
lIWKbvWDSM6IvjUdTUyPlPlT26NF9Y9xOR16FErL/qKrWCMLXe/TH7Vpt9v0pqKKYkb+2fYTyoXu
35tRAAoY4X2ORx0qllHAaVUw7WDE7pp0HIViWWRrP6V//fsL+3cmWuqaaJqN607+33FAyc32cFDH
smsJVYt+v0+/V0NRarT7fXo1BaXWjpFzYSWL5Q/W9OpJ9pdqP0n6F+j9EaNRj5oCBWN2TaWLqZnY
4/6zGcT23zoI3vij/4d/+Kf/mX/4p/+Z3/mj9/l7y1bx1fv87sXH85/fVvnZawM++OJF8MELnvxq
QOlHQTTw1RPevnjGi1dB8asnfPA1HN9eMhq3qH0eof/wmMGv3uZZ0MaLL5/w5Muw/CfkXoOLL5/x
IpDP/uoie7up8j/i5z+44MNfPfHrf/UM89cXlO5kHLRuqn8kEonkGpEyqLzLkeKxOLhUoHY0oJnP
k6+2GCoG7UiYTS2XYND0Izn5KkNq9CKDqoahMGwFkZ58k0GpPDVwUK0eBh2q4fUz9Udxzz1QcitE
GgsUjzo08xUqlQr56sl4mlW1etTC9uPuL6ncNank8+RbDuDQygf3qQW1qyUKOAxsItOofUp4KEd3
s7Wf2L8ANlo+Tz7fwknth4Rp3oRrZjfQjNdP2hrNZpOOA063SrM5xMOhVW3SPMm6LjFN/hT7y2Q/
i/TvYlb867oeOKGdLlpTKVRKhWX7L5k3/uj/5u6b/56z9/8B/+/v/wP+4j/AG/9omRpe8OSLZxuS
5j73bsHFqxfpX83S/u17HDPgnOj0d3R6+xkffw3Hd8Ip8fuorx9z8c1nm5H/9j2OueDzV5NvvHh1
Abfurbj2c5X+kUgkkutF8qBS5FASv+DRPbH9H1nXxuw4KMXyeJBhm9okCoeL6YdyIoMQhWIu3MTh
YmtmZN2cSqkQqR93rv45lKMVNnN4DMdtwCR0N9P+3P2llScjcgo4A2xAbRgUvJY/sB73eHr96f2b
HdXqUfNaaHNB6WBgNzeYUrH6beql6eju3UawfhK/K3OKx+Wpi3v3CMUZYLvupIvXZgn9LLSfRfrP
htCDSGivDt1qTP+tyu/z3/3PHl/8q6f81bn/yf/3757y3/7dhqp/ZfPJb0q8O15HeJ/HPyrBa7nY
tY+Pjp/zzjfv8/aXMYUrU+Jntz/mvXB6m+np7WcXD/mEd3n+4CUvHzznZ9+8z3tfrDZoWyz/fR6L
l3wa9sOC+1+9folEIrk5fD/9K0l4JAZmVJ1+vYYSHZl6l8E/bLRqDqtdp10zUPBwuk20cPGmyKGg
UOiNqBF3/ZYRORQ8BovuL608e0PkFHA6/mjk7NKDo4z1J/ZvdlSrj6F0qVaWGBGpJQpeh7xmI/Q+
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
--0000000000009ae12005d1a03f04--

--===============4377911950491836716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4377911950491836716==--

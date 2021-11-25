Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B6445DFDE
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 18:37:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F54F3846DB
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 12:37:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aFipNiS+";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 50F7B3846DB
	for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 12:36:53 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id de30so12477070qkb.0
        for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 09:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=FUK6PFtopZXEgT5kMJsd+Cp6mariyUfKePymXTlb+ig=;
        b=aFipNiS+LT9KSvsJ4ZnnKk+4oZvPsEaMl7v88Ah8MdzH+kMcuz6kGZVRRwGam4fUey
         xdlTvthpFu6cDPD+anGAZzZoQ0cGg8afK5MOMIJczTyfyOd5stBadVzNh7CqnF5+DpW6
         rESgUl+5P6pFTNXTX5S/U9267zWk0QJfmhY1Qlq32s+71BYVsCmahzuRioEF/FnDNy4v
         inkStEp9+zUru2VCKxLB9q9XzE5W4io02h6D55GIAZk71fyJmxuKcyX7j0leTXolqU9b
         sOqTztEMEGF6CZ5E1NHvVg4dxVeofXcq9h94mzaWOgh8RAUzo8+PoGTqiuHi7jA5CVEa
         UEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=FUK6PFtopZXEgT5kMJsd+Cp6mariyUfKePymXTlb+ig=;
        b=Tb0B62I8QP1UBQuIf3PDssJfKk2+S0+d8KDI583c6A3BNPJhBOwto1Zw4lxc23JFkN
         HexUj0MWTfZZYLe/2dRSjyD9YO2u5bzfnak/zyiyJRWVqRvcKsfxwRJPJ4SG4TkTBtnb
         2Jfi5C1G9OdT2c0SYcHhTW+pXIUV9latx0OaQGqdJuatQu+YvN2xJgHGwoy392kn0KPo
         J4YtTxQiqJZtwDlSUg6JmeSuCvcHUsgvjLHiF03qtt8WojLhrAWaX2HNgcY1cq973y5k
         E99u//OUeaR8zqaUZaG8YgHo9hGMPZHmpa67oRphPkok9XFVyyiHHphrsjGILnphn2ld
         QNVw==
X-Gm-Message-State: AOAM532vNtAdF83Ruq9quhbeuy5xKi2od86V99BEzfMIHBMm8etkBtwv
	pCWblppmlSBLHTqkOgCovxQ=
X-Google-Smtp-Source: ABdhPJym1qLvSpK7Y9xJYXYR3Wey3Sh01u/e6fhBmRxjzhmNJjLQ8JhD2C2RlurTyPy5c6vj3uYwVw==
X-Received: by 2002:a37:e04:: with SMTP id 4mr16790183qko.294.1637861812786;
        Thu, 25 Nov 2021 09:36:52 -0800 (PST)
Received: from [192.168.2.214] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id h16sm2009896qtx.20.2021.11.25.09.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Nov 2021 09:36:52 -0800 (PST)
Message-ID: <1fc493f7-de2b-6bf7-5133-206cf84546b8@gmail.com>
Date: Thu, 25 Nov 2021 12:36:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: ChunChih Lin <chunchi@g.clemson.edu>
References: <CAJ49BKjeiaLeK9-BqH59KYsA0L3D9w_jPF4ZXbFYVtC0zpfsxQ@mail.gmail.com>
 <0774a790-42f8-98cc-1f68-fee29eea9022@gmail.com>
 <CAJ49BKjbNNcw9cvv0FSmbzWymRr6zN-cEC7Et3CrRTjmx-wfog@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJ49BKjbNNcw9cvv0FSmbzWymRr6zN-cEC7Et3CrRTjmx-wfog@mail.gmail.com>
Message-ID-Hash: JXWCQSE6YRUTLEQVFF4Q4CZPKB4O5E4W
X-Message-ID-Hash: JXWCQSE6YRUTLEQVFF4Q4CZPKB4O5E4W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10Gb speed on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JXWCQSE6YRUTLEQVFF4Q4CZPKB4O5E4W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3368915318135731252=="

This is a multi-part message in MIME format.
--===============3368915318135731252==
Content-Type: multipart/alternative;
 boundary="------------WIt4tCD9Y3LcFtadfMC7cEPb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WIt4tCD9Y3LcFtadfMC7cEPb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-25 12:24, ChunChih Lin wrote:
> Hi=C2=A0Marcus,
>
> Thanks a lot for your reply.
> So, is there any way that I can check?
>
> Many thanks
> Chun-Chih Lin
Use ethtool on your host PC to check that the interface has negotiated=20
10G PHY rates.


>
> On Thu, Nov 25, 2021 at 11:02 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-11-25 10:54, ChunChih Lin wrote:
>>     Hi all,
>>
>>     I have a=C2=A010Gb=C2=A0PCIe NIC, Intel X520-DA1, installed on=C2=A0=
my
>>     desktop=C2=A0and connected to sfp+1 port with SFP+ DAC cable.
>>     I'm trying to verify the=C2=A0speed of the connection.
>>     I launched a iperf3 server on USRP N310, and a client from my
>>     desktop.
>>     The bandwidth is fat from 10Gb. The screenshot below is from my
>>     desktop.
>>     image.png
>>
>>     Bath mtu of interfaces=C2=A0on N310 and my desktop are set to be 9=
000.
>>
>>     Many thanks
>>     Chun-Chih Lin
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     You'll not get anywhere close to 10Gig when exchanging packets
>     with the *CPU* on the N310.=C2=A0=C2=A0 You only see the high-bandw=
idth
>     rates when streaming samples--the CPU is NOT
>     =C2=A0 involved in that at all.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------WIt4tCD9Y3LcFtadfMC7cEPb
Content-Type: multipart/related;
 boundary="------------OP05slg9h1rXr0FRNqTGw0DM"

--------------OP05slg9h1rXr0FRNqTGw0DM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-25 12:24, ChunChih Lin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJ49BKjbNNcw9cvv0FSmbzWymRr6zN-cEC7Et3CrRTjmx-wfog@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi=C2=A0Marcus,
        <div><br>
        </div>
        <div>Thanks a lot for your reply.</div>
        <div>So, is there any way that I can check?</div>
        <div><br>
        </div>
        <div>Many thanks</div>
        <div>Chun-Chih Lin</div>
      </div>
    </blockquote>
    Use ethtool on your host PC to check that the interface has
    negotiated 10G PHY rates.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAJ49BKjbNNcw9cvv0FSmbzWymRr6zN-cEC7Et3CrRTjmx-wfog@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 25, 2021 at 11:=
02
          AM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-11-25 10:54, ChunChih Lin wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">Hi all,
                    <div><br>
                    </div>
                    <div>I have a=C2=A010Gb=C2=A0PCIe NIC, Intel X520-DA1=
,
                      installed on=C2=A0my desktop=C2=A0and connected to =
sfp+1
                      port with SFP+ DAC cable.</div>
                    <div>I'm trying to verify the=C2=A0speed of the
                      connection.</div>
                    <div>I launched a iperf3 server on USRP N310, and a
                      client from my desktop.</div>
                    <div>The bandwidth is fat from 10Gb. The screenshot
                      below is from my desktop.</div>
                    <div><img
                        src=3D"cid:part1.15qcAQ2W.t8fYhOJ7@gmail.com"
                        alt=3D"image.png" class=3D"" width=3D"562"
                        height=3D"285"><br>
                    </div>
                    <div><br>
                    </div>
                    <div>Bath mtu of interfaces=C2=A0on N310 and my deskt=
op
                      are set to be 9000.</div>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            You'll not get anywhere close to 10Gig when exchanging
            packets with the *CPU* on the N310.=C2=A0=C2=A0 You only see =
the
            high-bandwidth rates when streaming samples--the CPU is NOT<b=
r>
            =C2=A0 involved in that at all.<br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------OP05slg9h1rXr0FRNqTGw0DM
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.15qcAQ2W.t8fYhOJ7@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAApUAAAFPCAYAAAAcHDVzAAAgAElEQVR4nOy9X6gjWZrY+es/
UJl+6UpvQdMFtdH3Kje399DOUT4s6yeNxqgRTbKhgYFcrBe5kE3J1FZAuB4GMYkeYtOIWUgH
RFP4Fqyo0YvM5tMovElxKWGr4sVr/NCa9BAu19w/E06opmFmquplsxqmp/YhIqSQFIoI/de9
9/zgQqaO4pwvzvfFpxPf+fN954033vgWiUQikUgkEolkDb67bwEkEolEIpFIJFef74f/uHXr
1j7lkEgkEolEIpFcYWSkUiKRSCQSiUSyNnJQKZFIJBKJRCJZGzmolEgkEolEIpGsjRxUSiQS
iUQikUjWZvVBpdDpjyzUDQoj2RYCVRWIfYuxMnuWX+hY/RGj0YhRX7/C/SiRSCQSyfbINKgU
ukVfP9SfUoFq9dHl6HYxokzdaHB3X80LFSEgHBwuX8F+5VcbNZRhlXw+T75i4u5JjpW5/YhH
d+5z/6a2L5FIJJKdkGFQqdKoKQxPD/Wn1MUeeNTqBxpBUi1GCRFdoUaiYKM+1jYG765JJa9h
z7Vt0R9F2l5lwJeKoNyuUwZQGxilFYaGC+TfDYKcAt55jP0Ldfu6W5tHfPSTpzz9sc5PZotu
P+Ij8ZKXD17y8sGnfPrmo6ni+3c+4tMHk/KP7qwyLExoH7j/5qSNT48fTQ88p+R7yafHj5ca
mKbLf5/Hx59Oyt9c7v420z8SiURyfUgdVAq9TsHpYB7qmBLAPqFLjcZa0UqBEDueYlUtekaR
y04QBasOUWptdjI2ETqN0oBmNT9p2+hhbTriK8oUGXLqgsgpeJdnG25gUyyrf4HeyDFohv3X
gdoW+m8t7vNYPOX46wGDuLKjpxx/9ZC3fvkWb/3yPT55/Skf3QmKbz9Gv/Mx7332ll/+2Scc
//j5pHzt9uH+m5/y/HX4IGjjvS/vod6JXHv0lONv3ufhL9/irV8+5JNb7/D8+FFMTTFkkP/R
8XPe4RO//s8+gB8ucX8b6R+JRCK5XqQMKgXlooIzWBwjyumTaFffUqd/lIWKbvWDSM6IvjUd
TUyPlPlT26NF9Y9xOR16FErL/qKrWCMLXe/TH7Vpt9v0pqKKYkb+2fYTyoXu35tRAAoY4X2O
Rx0qllHAaVUw7WDE7pp0HIViWWRrP6V//fsL+3cmWuqaaJqN607+33FAyc32cFDHsmsJVYt+
v0+/V0NRarT7fXo1BaXWjpFzYSWL5Q/W9OpJ9pdqP0n6F+j9EaNRj5oCBWN2TaWLqZnY4/6z
GcT23zoI3vij/4d/+Kf/mX/4p/+Z3/mj9/l7y1bx1fv87sXH85/fVvnZawM++OJF8MELnvxq
QOlHQTTw1RPevnjGi1dB8asnfPA1HN9eMhq3qH0eof/wmMGv3uZZ0MaLL5/w5Muw/CfkXoOL
L5/xIpDP/uoie7up8j/i5z+44MNfPfHrf/UM89cXlO5kHLRuqn8kEonkGpEyqLzLkeKxOLhU
oHY0oJnPk6+2GCoG7UiYTS2XYND0Izn5KkNq9CKDqoahMGwFkZ58k0GpPDVwUK0eBh2q4fUz
9Udxzz1QcitEGgsUjzo08xUqlQr56sl4mlW1etTC9uPuL6ncNank8+RbDuDQygf3qQW1qyUK
OAxsItOofUp4KEd3s7Wf2L8ANlo+Tz7fwknth4Rp3oRrZjfQjNdP2hrNZpOOA063SrM5xMOh
VW3SPMm6LjFN/hT7y2Q/i/TvYlb867oeOKGdLlpTKVRKhWX7L5k3/uj/5u6b/56z9/8B/+/v
/wP+4j/AG/9omRpe8OSLZxuS5j73bsHFqxfpX83S/u17HDPgnOj0d3R6+xkffw3Hd8Ip8fuo
rx9z8c1nm5H/9j2OueDzV5NvvHh1Abfurbj2c5X+kUgkkutF8qBS5FASv+DRPbH9H1nXxuw4
KMXyeJBhm9okCoeL6YdyIoMQhWIu3MThYmtmZN2cSqkQqR93rv45lKMVNnN4DMdtwCR0N9P+
3P2llScjcgo4A2xAbRgUvJY/sB73eHr96f2bHdXqUfNaaHNB6WBgNzeYUrH6beql6eju3Uaw
fhK/K3OKx+Wpi3v3CMUZYLvupIvXZgn9LLSfRfrPhtCDSGivDt1qTP+tyu/z3/3PHl/8q6f8
1bn/yf/3757y3/7dhqp/ZfPJb0q8O15HeJ/HPyrBa7nYtY+Pjp/zzjfv8/aXMYUrU+Jntz/m
vXB6m+np7WcXD/mEd3n+4CUvHzznZ9+8z3tfrDZoWyz/fR6Ll3wa9sOC+1+9folEIrk5fD/9
K0l4JAZmVJ1+vYYSHZl6l8E/bLRqDqtdp10zUPBwuk20cPGmyKGgUOiNqBF3/ZYRORQ8Bovu
L608e0PkFHA6/mjk7NKDo4z1J/ZvdlSrj6F0qVaWGBGpJQpeh7xmI/Q+vb7OWRPqBY+OJtCt
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
ys9XRpL1U6B2NKCZz5OvtmIiPTZaPk8+35qPVKXqZ5n+9/PXO51oNpSr8Hy6mItGiSKHgsMl
0UH7/KB22/pfSCb5Eu5v+QZj7T+NnN6nV0sbUCL9yw1ir4NK1TKgdYgZcnw2I5//9tUPjV05
mln7kla+CBezkh9PzVRbQ5SVpqe3Jd8mUCjm1GDXv4utmRFdhJHASSTP7DgoxXLgeIPyprnV
SITQgzflXh1i01iu3n+2VmVInd5oxGjUo+i1aC57GLV7ypAi7XohZuoyEgHoGXP1u6dDvMJk
elYtFcAZZHwe0vQDyfrdLarVo+a1IvpLeb7cU4ZeIYgyQjjwWvr5SNRPpP9cO6b/1iVj/6sN
akxHKdOvP4znM5kCxVwwaM9XGRJdXrIp/7ot+TbLvP1nk69WBI8C8RMw0r/cRPY3qFQtDKXL
yVlwXFD4+aGcG7Qx+XznNE515l1ylrk8Or2VvFDctU2aK01PryPfNrHRql28Yp12LyZSIHIo
KNR6kf4xCjPl05HCbeCalfGaystibzJ4nHxjxf4T6P0eR5fN8ZqkzmV9hR8VF7PjoYQRgCmm
1zx1MKbrnxo4TZx4NvFT9JOm3x2iWn0MpZuYV33++XIxm128YhDJ6jdg6KzwfCTpZ5v2m7X/
46KUGa4/kOczGYeOGRmU+OtXYgftq/vX3ci3Dlnsf5F8rUqFSsuhYPSZNx/pX24iKUcKbReP
Iu120f+PogBgtCHX1DiE7GBryeee41EkF0m7KnIKeIMg8pBSDvjTW1t6t9qIfFvGNdEqpt+2
atEzGqhmEDl2z/FwFh8xFSP/dmW1MTslavUywnRx1+2/mDV79umQeq+Eir3cG7etEZrRYrfq
Yg8cDCNav//2X6uXEedHFLwhJ1n7Mk0/kKzfHeH/oA6pVmYHTRmIyA9+1Lq2yvOxUD/Kdu03
S/8HU5KtOKVcpecztv2jPTSckR3Jt5b9h9gardIIo61zurCem+lfbiL7i1TaGpVKZfIXrp2o
HMaAMrt8wbEic4vQbQaOQq0RrIMRs7sn08pTEDqWHmlT6LRjr9+TfP9/e2ev6yzP9Pv/K+3i
OYCnt5ZyVa44AkQRKZ3TR1tKkSYVEmUaCpqUSFSrSRFpiz50kSgQR0BFtaLIR/LuAkggAUwW
+SAr85Mu6b6XYxg89jCMP6Yvl893RYAw1uGUnouLrM65nGG+tlCsz+bCwi2nvtwkHxfZ9Kc8
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
AAAASUVORK5CYII=
--------------OP05slg9h1rXr0FRNqTGw0DM--

--------------WIt4tCD9Y3LcFtadfMC7cEPb--

--===============3368915318135731252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3368915318135731252==--

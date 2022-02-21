Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9360E4BDAC0
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 17:11:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D338384E2F
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 11:11:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZkZ34GQR";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 8ED48384B03
	for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 11:10:28 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id j12so35353476ybh.8
        for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 08:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r1Zuq8+Ix3/gf6qLLjx4+K2z/0q/xnDnbmgFztLwGi4=;
        b=ZkZ34GQRYbQdTD7cInfjHkLcl+EdIeJe+uFrLhIcKFLofEyHvf8BljcLTWxWcQz0uN
         9dqQaPbUOQL4hr5Pcyhf5y22MEn0QBcn1QeP3rHq710I9W36F58BZWvEDC/EQToC/Km9
         30OQQOpS/tiYdqN6ZNOBXFJ2giQeJH150WnFXsuC6lEf+qIjy7YHX1D3glr9hWCZlV9d
         1fQ7XLEIgV1IK+ROiZR1KHdrNuTnuc9jkA24yHvcsDbRbLhMbUjr/dobEAG2w4UxoXHH
         CkpkeNdO7LoRhHx9ryYwCDxbxCSl17XByR82vxK7uGLEwFcekl/fjP5/fn3ks3h4UkCl
         lIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r1Zuq8+Ix3/gf6qLLjx4+K2z/0q/xnDnbmgFztLwGi4=;
        b=iSepoBuoijjnM/w15jjGRXoKTeNBglswZlc762p4UNDTZ5RDTuzm8JLFrfqvO5BE95
         BIxc0B4E8HdILwcw2O1WBGYa+vFFduE4CpWIAVnun1/usRwttHvDjaH/2wQg7NmN6Rda
         IXO0/hR+fVi0AvZthjCkH2+PTl4QOLEaH/TgAGuvar9hdGlnX9K5T9tokhzkJZc41jxT
         QlXAS/po7wd0cWO+BNtmJ5bqZIpAnDjqkcOeHxpuEA/T+Me6KSX+xHl5s4MJey+wKGAQ
         9TG05Zt06ppErgDuX0SCSwwTnwoO3iV4omj8hkUZGyzuwWA7DgNYQqMyKQtvgg8lHimr
         nPKg==
X-Gm-Message-State: AOAM531VPqRzFqnW3XdEW57Eg7OLSQqPPpBwsGu7tBklad3GWHfCwt7y
	QnT2x2t81c8ASfsj0JdJ/1QI32TlDqp3F6lMphQvRg==
X-Google-Smtp-Source: ABdhPJxvXQS0KU//jnacuKuWrVB+z/toBvVg2e4u8YFkiF7NvXSdnr0uKi4CbEcOCzs0wPnRjTC/5JrqxGYhjms1r5g=
X-Received: by 2002:a25:b991:0:b0:610:bf4e:1b33 with SMTP id
 r17-20020a25b991000000b00610bf4e1b33mr19776763ybg.352.1645459827772; Mon, 21
 Feb 2022 08:10:27 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
In-Reply-To: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 21 Feb 2022 11:10:14 -0500
Message-ID: <CAB__hTSJe7puQo0EoqbWZ2YBOy7wGXfwYUTqAbQaHJnnmSn5-Q@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: YBBABRMNRZYOVP2PIWTITBFJIAIWBJVM
X-Message-ID-Hash: YBBABRMNRZYOVP2PIWTITBFJIAIWBJVM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can create an RFNOC correlate block for USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBBABRMNRZYOVP2PIWTITBFJIAIWBJVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7701043572872224080=="

--===============7701043572872224080==
Content-Type: multipart/alternative; boundary="000000000000873cec05d8897856"

--000000000000873cec05d8897856
Content-Type: text/plain; charset="UTF-8"

is there a specific function (such as MATLAB 'xcorr') you want to
implement?  You can implement 'cconv' with a pair of FFT/IFFT and complex
multiplication.  If you zero-pad and use 2x length FFTs, you can
alternatively obtain linear convolution using an overlap-and-add
configuration.  I haven't looked at 'xcorr' specifically, but my guess is
that you could do what you want with an FFT/IFFT pair.
Rob

On Mon, Feb 21, 2022 at 6:36 AM sp h <stackprogramer@gmail.com> wrote:

> How can create an RFNOC correlate block for USRP?
> This thread is created to share results on searching how we can correlate
> RFNOC blocks...
> Anyone that had an idea, I'm glad to hear it...
> thanks in advance
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000873cec05d8897856
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">is there a specific function (such as MATLAB &#39;xcorr&#3=
9;) you want to implement?=C2=A0 You can implement &#39;cconv&#39; with a p=
air of FFT/IFFT and complex multiplication.=C2=A0 If you zero-pad and use 2=
x length FFTs, you can alternatively obtain linear convolution using an ove=
rlap-and-add configuration.=C2=A0 I haven&#39;t looked at &#39;xcorr&#39; s=
pecifically, but my guess is that you could do what you want with an FFT/IF=
FT pair.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Feb 21, 2022 at 6:36 AM sp h &lt;<a href=3D"m=
ailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Ho=
w can create an RFNOC correlate block for USRP?<div>This thread is created =
to share results on searching how we can correlate RFNOC blocks...</div><di=
v>Anyone that had an idea, I&#39;m glad=C2=A0to hear it...</div><div>thanks=
 in advance</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000873cec05d8897856--

--===============7701043572872224080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7701043572872224080==--

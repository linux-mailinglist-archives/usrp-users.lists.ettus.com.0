Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 412ECA3BF15
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 13:58:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1783B3862D3
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 07:58:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739969911; bh=cdzF4+76VRUpd/AVtCifNSqTn9NI2G/bs+/rdhAKznM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MzHCr7bwyEJJofvH9xgk7kAXU4Q0TuFCb31yBai/Vr14UhghGGhkxINvAt9vacG1p
	 AACakP++YdPkVmLMdjJemqMFLX6EPIDyCon71J+QFQ9lL7IzOsgFqFh7M0H9epqKRn
	 novqApm+8GmNXGkKCFr7mxC0LTzHKQw80zWwNsRQrzHkXJHJrEhMt9jnyk1Mn4K1tm
	 IRt9sPyHHpfjP5tFaswNienVdCPop/RPzNJdaZZQCS+plicR8ItbDdzmayMumc57RQ
	 R3HjOOpPVR7sXgr5WUod4EO8LKYCSRsvoissn4yX+fqCpuAOPZpnlrWR8Z7tZ0d1n0
	 Uwv89lQ5ATSnA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 52C78385D79
	for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 07:58:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UDdkhoqN";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5dedd4782c6so9837943a12.3
        for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 04:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739969904; x=1740574704; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+JWxAmYYggCRJp9UIWtohsVgiTsG/3nmKn7l0wr8SbE=;
        b=UDdkhoqNT0eVfXBZG2LyEXLcrCDTfxA/SWtBt2Ul44mCAaKtcR5WTxe+/NzMqCY5Y2
         q+Hk6HAQxteEd84Y7hEJDxTIoMlURDfy7Lg+U+cotaBrJBSlODGBF3yoJ6+w3aA9o/8T
         ySiLgG7lCibl1yf1oybScpkTXoIMbKOj2lBpH0i/mm8vdSeE67D0a5SO8w7KEVo8HYR3
         +XB5VVwAlLkdCpg3RmavggAC7mrdQyeY4uEXOgqpd3M1n1CwrlzS6H/LwNLWYFHdTvHW
         LR1rMc0zKAC8ZPvFvWEf2FPmV0Mzd8v3A4ljbXDf5jKkPq0CdJw4pRViCRjGWlpB9Izi
         yC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969904; x=1740574704;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+JWxAmYYggCRJp9UIWtohsVgiTsG/3nmKn7l0wr8SbE=;
        b=khxbbYLfRAPO1/4yAR9RJ3+c7AE5Af2k2I5bLPxtozqNVYj5qn5rqZkLcuhIVZ4mBM
         qBTlhFxQWBTOfETpa2xIZdukj83LXjL52jrMGJ7/1FvYz/Z99RseLmf9mPO/i+KIj3Zz
         GA0nEJipz4xYhvlOrCQmjRSGp/rtoH5E9ulCsus+wpWueI1Qpy5SXD8QSHok+iK633UR
         s1K5n75MIscwKHYn71SUfd3+rUrTgQ2XHn78wLfduwU22IAQKbTMLTda7AAMJlpinj9N
         ltaubzIQYxRY9xS4uiSLSyWCAcbn3S+VeV6OEaZEPuziEF01bC7wwVt+jG+4Iu3OcTXs
         Imdg==
X-Gm-Message-State: AOJu0Yz93dyK/zp5BMt5WFrFsn4hglRl0hPS9Q3YsNEXnXXfZ0ahSZlz
	LnzoHKsaEg8u08pPwEKV8y+iJN06gkoNVok2qydpQT+uDcuYgmHRSdBrVPQn5c3PNk6bcPbdF1i
	Sy+lBbvD6MnMXkyfsQlPYesBTmsyUfwjvndkZidTU
X-Gm-Gg: ASbGnctfZSeqaLGv3GS4osUBhGrUvCITradTjUKgu2v2O1yLNG8l6nNPRebHHXGFf/9
	H8Vbq/2ZDBqq5BVAI7TRD1L2rCfMwijPgCt0X8wrUtB7bk3LfdMmy4zyrr+NaeoDwScXUFX4MwQ
	hXSLT60wcn5NXXv0HYbxwabhao10M=
X-Google-Smtp-Source: AGHT+IGh/0PLPddOxCzZP1Plfy7HeGgRMY9PDPLS77FDC8pWgb4kTOZ984gKZGxEI/70jX2xhpUwh3bRhbaVFfBgP4o=
X-Received: by 2002:a05:6402:2386:b0:5e0:40e9:2383 with SMTP id
 4fb4d7f45d1cf-5e040e923a2mr11107856a12.24.1739969904136; Wed, 19 Feb 2025
 04:58:24 -0800 (PST)
MIME-Version: 1.0
References: <skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU@lists.ettus.com>
In-Reply-To: <skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 19 Feb 2025 13:58:13 +0100
X-Gm-Features: AWEUYZktuCRxNYNzTGK3Hk-WXZzTZoK7jPl05P9-u47sokFUdw6jCPx8BXZGBTo
Message-ID: <CAFOi1A7fN=eZ-mkKvQtLAPF_dA=S65aY+qGkJuWr+g+qs=h1hg@mail.gmail.com>
To: cyberphox@gmail.com
Message-ID-Hash: 4TNADA4YGHPWMFJTQFXWUOSRGFXOHCRA
X-Message-ID-Hash: 4TNADA4YGHPWMFJTQFXWUOSRGFXOHCRA
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4TNADA4YGHPWMFJTQFXWUOSRGFXOHCRA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0497128371500695538=="

--===============0497128371500695538==
Content-Type: multipart/alternative; boundary="0000000000000e7040062e7e50d4"

--0000000000000e7040062e7e50d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 18, 2025 at 7:13=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Hi Martin,
>
> I don=E2=80=99t fully understand you comment about it not being the block
> controller. (bear with as I am not super experienced)
>
> At the moment I have not trapped a timeout exception just yet (see snippe=
t
> below). It could well be somewhere else in the application as you say.
>

If you're not catching an op_timeout, then the poke/peek is not the
problem. If your code below is timing out, then check the mutexes.

>
> ------------------------------
>
>         try
>
>         {
>
>             lock_mutex();
>
>             // Write to the calculated address
>
>             siggen_block->regs().poke32(address, data->data[0]);
>
>             unlock_mutex();
>
>             lnx_uhd_status =3D true;
>
>         }
>
>         catch(const uhd::op_timeout& e)
>
>         {
>
>             std::cerr << "Write exception: " <<  e.what() << '\n';
>
>         }
>
>         catch(const std::exception& e)
>
>         {
>
>             std::cerr << "Write exception: " <<  e.what() << '\n';
>
>             unlock_mutex();
>
>         }
>
> ------------------------------
>
>
> If you don=E2=80=99t mind, regarding David=E2=80=99s email above (points =
2 and 3) could
> you comment on these
>
> For point 2. this makes sense to me, would you also recommend the same?
>

Yes this make sense; make sure that span is not too small though.

> for point 3. After setting up the LO, I am checking the lock flags in a
> loop with a time-out, after which I clear the command time:-
> radio_ctrl[radio_id]->clear_command_time(0);
>

If you're polling on the lock state, make sure to call clear_command_time()
*before* you start doing that.

--M

--0000000000000e7040062e7e50d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 18,=
 2025 at 7:13=E2=80=AFPM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberph=
ox@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><p>Hi Martin,</p><p>I don=E2=80=99t fully understand you commen=
t about it not being the block controller. (bear with as I am not super exp=
erienced)</p><p>At the moment I have not trapped a timeout exception just y=
et (see snippet below).  It could well be somewhere else in the application=
 as you say.</p></blockquote><div><br></div><div>If you&#39;re not catching=
 an op_timeout, then the poke/peek is not the problem. If your code below i=
s timing out, then check the mutexes. <br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><p><br></p><div><hr></div><pre><code>        try</co=
de></pre><pre><code>        {</code></pre><pre><code>            lock_mutex=
();</code></pre><pre><code>            // Write to the calculated address</=
code></pre><pre><code>            siggen_block-&gt;regs().poke32(address, d=
ata-&gt;data[0]);</code></pre><pre><code>            unlock_mutex();</code>=
</pre><pre><code>            lnx_uhd_status =3D true;</code></pre><pre><cod=
e>        }</code></pre><pre><code>        catch(const uhd::op_timeout&amp;=
 e)</code></pre><pre><code>        {</code></pre><pre><code>            std=
::cerr &lt;&lt; &quot;Write exception: &quot; &lt;&lt;  e.what() &lt;&lt; &=
#39;\n&#39;;</code></pre><pre><code>        }</code></pre><pre><code>      =
  catch(const std::exception&amp; e)</code></pre><pre><code>        {</code=
></pre><pre><code>            std::cerr &lt;&lt; &quot;Write exception: &qu=
ot; &lt;&lt;  e.what() &lt;&lt; &#39;\n&#39;;</code></pre><pre><code>      =
      unlock_mutex();</code></pre><pre><code>        }
<br></code></pre><div><hr></div><p><br></p><p>If you don=E2=80=99t mind, re=
garding David=E2=80=99s email above (points 2 and 3) could you comment on t=
hese</p><p>For point 2. this makes sense to me, would you also recommend th=
e same?</p></blockquote><div><br></div><div>Yes this make sense; make sure =
that span is not too small though.</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>for point 3.  After setting up the LO, I am checking the =
lock flags in a loop with a time-out, after which I clear the command time:=
-     radio_ctrl[radio_id]-&gt;clear_command_time(0);  </p></blockquote><di=
v><br></div><div>If you&#39;re polling on the lock state, make sure to call=
 clear_command_time() *before* you start doing that.</div><div><br></div><d=
iv>--M</div><br></div></div>

--0000000000000e7040062e7e50d4--

--===============0497128371500695538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0497128371500695538==--

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB8F2B9116
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 12:34:56 +0100 (CET)
Received: from [::1] (port=36538 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfiDD-00068I-1K; Thu, 19 Nov 2020 06:34:51 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:33894)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jbmsdr@gmail.com>) id 1kfiD9-00063K-Ci
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 06:34:47 -0500
Received: by mail-qk1-f180.google.com with SMTP id n132so4963859qke.1
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 03:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ytij5PqEcuFek/1xz6RsPidMwpqS0OxtHNueFuTBN1M=;
 b=J2ba3iorQjH3+eIJBLZdHVnQZh4wboo1O7EaxnuVVbHPooNaaXQ0kC2jE/TsuA7eSt
 HGQj4UCzie/xORkp7Df5KE8boinLEa5hOvoo+ZedtZx7EOhWbQDpxVuyKTorYLD8P3Js
 iXIE2Y1KeEP4dnX0b3RfIZYwr17JcU0+5kok/jrvnN/OAnmIgXV6wFV5MdKIDQ/tPFwZ
 cKFfGg4ZXx8nTtICVxRlH3poz8ofAnY1rrGSkH9liqcpNHv5r5blxgIVSTXLByPo6mZF
 GECrq030fsuEsQB2/Llj+UADXjft5Gcbf71DB6k60FQyC0h2Nk9TpLDHHItZNugyb3hb
 9gXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ytij5PqEcuFek/1xz6RsPidMwpqS0OxtHNueFuTBN1M=;
 b=EQ0AFChNeVU+4uF8Q+wGMLGhep+98dP39YOttykcvLVz+3IXVe9oVzJMqClZLRoefs
 3sXQFF1yhVntIek9MBSV6tNPsQWDngiYAueC+8C0PB5EwCHsJxB0VNMQLyMruqvDUPR1
 ljsQX8+HcbXdmrbN56blGg6eQDLqWdBG8M2+tddDWpQbEJKnyauskKT2g1FsVa9lZMIb
 qfyBEUuquCTKiyTsuClBkweCoY+70esh2Upmmhl7sLgBGJ+iTdbUoamA/Pdrg5M0P654
 RNpv8yPLl16J4Tc39kMpwutEe7Ussnktl1Avu+7A4UGpQbCE3cbt93xAbW0N7LzM/Meq
 8RXA==
X-Gm-Message-State: AOAM533lFIvWLZhjRT/FRG5nzVCfgwLyi8XTjirZjwE04Wjp4pGi+APs
 MJn0gPzhcpvnt/ga5G/MNI49s9X4WbSPwp6OtAw=
X-Google-Smtp-Source: ABdhPJwfm82V7IGZFWot5F4o/MJh4ciMwzDb0c+ZyiQ94gdUUPADTHpd970TImUfGCnOIDwGCwSepi3nhtCwXnCQxHg=
X-Received: by 2002:a37:84b:: with SMTP id 72mr10625022qki.435.1605785646773; 
 Thu, 19 Nov 2020 03:34:06 -0800 (PST)
MIME-Version: 1.0
References: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
 <5FB59610.5020902@gmail.com>
In-Reply-To: <5FB59610.5020902@gmail.com>
Date: Thu, 19 Nov 2020 06:33:55 -0500
Message-ID: <CA+1FM8rYrQ2ukQ39HbzrWw8JbNqSo8a4mCd++J95rTLFWfBGpg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="0000000000000fe16205b4741bd9"
Subject: Re: [USRP-users] Overflows at flowgraph start using gr-uhd
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--0000000000000fe16205b4741bd9
Content-Type: multipart/alternative; boundary="0000000000000fe15f05b4741bd7"

--0000000000000fe15f05b4741bd7
Content-Type: text/plain; charset="UTF-8"

Marcus,

This is naked hardware - B210 usb into a pretty beefy laptop running Ubuntu
20.04, GNU Radio latest master (3.9)
Even with num_recv_frames = 128, still getting "ODD" at startup of the
flowgraph

Any other optimizations I should be tuning?  Getting no overruns in the
steady state, just at startup.

Flowgraph is attached.

Josh

On Wed, Nov 18, 2020 at 4:46 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/18/2020 07:27 AM, Josh via USRP-users wrote:
>
> I'm seeing a difference in behavior between gr-uhd and plain uhd c++ api:
>
> Setup:
> B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync
> Receive only flowgraph
>
> With gr-uhd, there is always a "OOD" when the flowgraph first starts
>
> But, if I replicate the setup in a simple compiled program using the uhd
> API with all the same settings, this never occurs.
>
> So my question is - is the GR scheduler doing something at the beginning
> of the flowgraph that delays the work() calls and causes overflows, and are
> there settings I use to mitigate this?  My problem is that once these
> overflows occur, I can't trust my timing synchronization on the received
> samples (or have to do further calculations on the rx_time tags).
>
> Thanks,
> Josh
>
>
> _______________________________________________
>
>
> Try specifying "num_recv_frames=128" in your device arguments.
>
> Also, are you running this on naked hardware or through a VM?
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000fe15f05b4741bd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus,</div><div><br></div><div>This is naked hardwa=
re - B210 usb into a pretty beefy laptop running Ubuntu 20.04, GNU Radio la=
test master (3.9)<br></div><div>Even with num_recv_frames =3D 128, still ge=
tting &quot;ODD&quot; at startup of the flowgraph</div><div><br></div><div>=
Any other optimizations I should be tuning?=C2=A0 Getting no overruns in th=
e steady state, just at startup.</div><div><br></div><div>Flowgraph is atta=
ched.</div><div><br></div><div>Josh<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 18, 2020 at 4:46 P=
M Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 11/18/2020 07:27 AM, Josh via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>I&#39;m seeing a difference in behavior between gr-uhd and
          plain uhd c++ api:</div>
        <div><br>
        </div>
        <div>Setup:</div>
        <div>B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync<br=
>
        </div>
        <div>Receive only flowgraph</div>
        <div><br>
        </div>
        <div>With gr-uhd, there is always a &quot;OOD&quot; when the flowgr=
aph
          first starts</div>
        <div><br>
        </div>
        <div>But, if I replicate the setup in a simple compiled program
          using the uhd API with all the same settings, this never
          occurs.</div>
        <div><br>
        </div>
        <div>So my question is - is the GR scheduler doing something at
          the beginning of the flowgraph that delays the work() calls
          and causes overflows, and are there settings I use to mitigate
          this?=C2=A0 My problem is that once these overflows occur, I can&=
#39;t
          trust my timing synchronization on the received samples (or
          have to do further calculations on the rx_time tags).</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Josh<br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________

</pre>
    </blockquote>
    Try specifying &quot;num_recv_frames=3D128&quot; in your device argumen=
ts.<br>
    <br>
    Also, are you running this on naked hardware or through a VM? <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000fe15f05b4741bd7--
--0000000000000fe16205b4741bd9
Content-Type: application/gnuradio-grc; name="test_usrp_rx.grc"
Content-Disposition: attachment; filename="test_usrp_rx.grc"
Content-Transfer-Encoding: base64
Content-ID: <f_khora1cf0>
X-Attachment-Id: f_khora1cf0

b3B0aW9uczoKICBwYXJhbWV0ZXJzOgogICAgYXV0aG9yOiAnJwogICAgY2F0Y2hfZXhjZXB0aW9u
czogJ1RydWUnCiAgICBjYXRlZ29yeTogJ1tHUkMgSGllciBCbG9ja3NdJwogICAgY21ha2Vfb3B0
OiAnJwogICAgY29tbWVudDogJycKICAgIGNvcHlyaWdodDogJycKICAgIGRlc2NyaXB0aW9uOiAn
JwogICAgZ2VuX2NtYWtlOiAnT24nCiAgICBnZW5fbGlua2luZzogZHluYW1pYwogICAgZ2VuZXJh
dGVfb3B0aW9uczogcXRfZ3VpCiAgICBoaWVyX2Jsb2NrX3NyY19wYXRoOiAnLjonCiAgICBpZDog
dGVzdF91c3JwX3J4CiAgICBtYXhfbm91dHM6ICcwJwogICAgb3V0cHV0X2xhbmd1YWdlOiBweXRo
b24KICAgIHBsYWNlbWVudDogKDAsMCkKICAgIHF0X3Fzc190aGVtZTogJycKICAgIHJlYWx0aW1l
X3NjaGVkdWxpbmc6ICcnCiAgICBydW46ICdUcnVlJwogICAgcnVuX2NvbW1hbmQ6ICd7cHl0aG9u
fSAtdSB7ZmlsZW5hbWV9JwogICAgcnVuX29wdGlvbnM6IHByb21wdAogICAgc2l6aW5nX21vZGU6
IGZpeGVkCiAgICB0aHJlYWRfc2FmZV9zZXR0ZXJzOiAnJwogICAgdGl0bGU6IE5vdCB0aXRsZWQg
eWV0CiAgc3RhdGVzOgogICAgYnVzX3Npbms6IGZhbHNlCiAgICBidXNfc291cmNlOiBmYWxzZQog
ICAgYnVzX3N0cnVjdHVyZTogbnVsbAogICAgY29vcmRpbmF0ZTogWzgsIDhdCiAgICByb3RhdGlv
bjogMAogICAgc3RhdGU6IGVuYWJsZWQKCmJsb2NrczoKLSBuYW1lOiBmcmVxCiAgaWQ6IHZhcmlh
YmxlCiAgcGFyYW1ldGVyczoKICAgIGNvbW1lbnQ6ICcnCiAgICB2YWx1ZTogJzc1MTAwMDAwMCcK
ICBzdGF0ZXM6CiAgICBidXNfc2luazogZmFsc2UKICAgIGJ1c19zb3VyY2U6IGZhbHNlCiAgICBi
dXNfc3RydWN0dXJlOiBudWxsCiAgICBjb29yZGluYXRlOiBbMjc0LCAxNF0KICAgIHJvdGF0aW9u
OiAwCiAgICBzdGF0ZTogZW5hYmxlZAotIG5hbWU6IGdhaW4KICBpZDogdmFyaWFibGUKICBwYXJh
bWV0ZXJzOgogICAgY29tbWVudDogJycKICAgIHZhbHVlOiAnNTAnCiAgc3RhdGVzOgogICAgYnVz
X3Npbms6IGZhbHNlCiAgICBidXNfc291cmNlOiBmYWxzZQogICAgYnVzX3N0cnVjdHVyZTogbnVs
bAogICAgY29vcmRpbmF0ZTogWzM4MCwgMTRdCiAgICByb3RhdGlvbjogMAogICAgc3RhdGU6IGVu
YWJsZWQKLSBuYW1lOiBzYW1wX3JhdGUKICBpZDogdmFyaWFibGUKICBwYXJhbWV0ZXJzOgogICAg
Y29tbWVudDogJycKICAgIHZhbHVlOiAnNzY4MDAwMCcKICBzdGF0ZXM6CiAgICBidXNfc2luazog
ZmFsc2UKICAgIGJ1c19zb3VyY2U6IGZhbHNlCiAgICBidXNfc3RydWN0dXJlOiBudWxsCiAgICBj
b29yZGluYXRlOiBbMTg0LCAxMl0KICAgIHJvdGF0aW9uOiAwCiAgICBzdGF0ZTogZW5hYmxlZAot
IG5hbWU6IHF0Z3VpX2ZyZXFfc2lua194XzAKICBpZDogcXRndWlfZnJlcV9zaW5rX3gKICBwYXJh
bWV0ZXJzOgogICAgYWZmaW5pdHk6ICcnCiAgICBhbGlhczogJycKICAgIGFscGhhMTogJzEuMCcK
ICAgIGFscGhhMTA6ICcxLjAnCiAgICBhbHBoYTI6ICcxLjAnCiAgICBhbHBoYTM6ICcxLjAnCiAg
ICBhbHBoYTQ6ICcxLjAnCiAgICBhbHBoYTU6ICcxLjAnCiAgICBhbHBoYTY6ICcxLjAnCiAgICBh
bHBoYTc6ICcxLjAnCiAgICBhbHBoYTg6ICcxLjAnCiAgICBhbHBoYTk6ICcxLjAnCiAgICBhdXRv
c2NhbGU6ICdGYWxzZScKICAgIGF2ZXJhZ2U6ICcxLjAnCiAgICBheGlzbGFiZWxzOiAnVHJ1ZScK
ICAgIGJ3OiBzYW1wX3JhdGUKICAgIGNvbG9yMTogJyJibHVlIicKICAgIGNvbG9yMTA6ICciZGFy
ayBibHVlIicKICAgIGNvbG9yMjogJyJyZWQiJwogICAgY29sb3IzOiAnImdyZWVuIicKICAgIGNv
bG9yNDogJyJibGFjayInCiAgICBjb2xvcjU6ICciY3lhbiInCiAgICBjb2xvcjY6ICcibWFnZW50
YSInCiAgICBjb2xvcjc6ICcieWVsbG93IicKICAgIGNvbG9yODogJyJkYXJrIHJlZCInCiAgICBj
b2xvcjk6ICciZGFyayBncmVlbiInCiAgICBjb21tZW50OiAnJwogICAgY3RybHBhbmVsOiAnRmFs
c2UnCiAgICBmYzogJzAnCiAgICBmZnRzaXplOiAnMTAyNCcKICAgIGZyZXFoYWxmOiAnVHJ1ZScK
ICAgIGdyaWQ6ICdGYWxzZScKICAgIGd1aV9oaW50OiAnJwogICAgbGFiZWw6IFJlbGF0aXZlIEdh
aW4KICAgIGxhYmVsMTogJycKICAgIGxhYmVsMTA6ICcnJycnJwogICAgbGFiZWwyOiAnJycnJycK
ICAgIGxhYmVsMzogJycnJycnCiAgICBsYWJlbDQ6ICcnJycnJwogICAgbGFiZWw1OiAnJycnJycK
ICAgIGxhYmVsNjogJycnJycnCiAgICBsYWJlbDc6ICcnJycnJwogICAgbGFiZWw4OiAnJycnJycK
ICAgIGxhYmVsOTogJycnJycnCiAgICBsZWdlbmQ6ICdUcnVlJwogICAgbWF4b3V0YnVmOiAnMCcK
ICAgIG1pbm91dGJ1ZjogJzAnCiAgICBuYW1lOiAnIiInCiAgICBuY29ubmVjdGlvbnM6ICcyJwog
ICAgbm9ybV93aW5kb3c6ICdGYWxzZScKICAgIHNob3dwb3J0czogJ0ZhbHNlJwogICAgdHJfY2hh
bjogJzAnCiAgICB0cl9sZXZlbDogJzAuMCcKICAgIHRyX21vZGU6IHF0Z3VpLlRSSUdfTU9ERV9G
UkVFCiAgICB0cl90YWc6ICciIicKICAgIHR5cGU6IGNvbXBsZXgKICAgIHVuaXRzOiBkQgogICAg
dXBkYXRlX3RpbWU6ICcwLjEwJwogICAgd2lkdGgxOiAnMScKICAgIHdpZHRoMTA6ICcxJwogICAg
d2lkdGgyOiAnMScKICAgIHdpZHRoMzogJzEnCiAgICB3aWR0aDQ6ICcxJwogICAgd2lkdGg1OiAn
MScKICAgIHdpZHRoNjogJzEnCiAgICB3aWR0aDc6ICcxJwogICAgd2lkdGg4OiAnMScKICAgIHdp
ZHRoOTogJzEnCiAgICB3aW50eXBlOiBmaXJkZXMuV0lOX0JMQUNLTUFOX2hBUlJJUwogICAgeW1h
eDogJzEwJwogICAgeW1pbjogJy0xNDAnCiAgc3RhdGVzOgogICAgYnVzX3Npbms6IGZhbHNlCiAg
ICBidXNfc291cmNlOiBmYWxzZQogICAgYnVzX3N0cnVjdHVyZTogbnVsbAogICAgY29vcmRpbmF0
ZTogWzY0MCwgMzE1XQogICAgcm90YXRpb246IDAKICAgIHN0YXRlOiB0cnVlCi0gbmFtZTogdWhk
X3VzcnBfc291cmNlXzAKICBpZDogdWhkX3VzcnBfc291cmNlCiAgcGFyYW1ldGVyczoKICAgIGFm
ZmluaXR5OiAnJwogICAgYWxpYXM6ICcnCiAgICBhbnQwOiAnIlJYMiInCiAgICBhbnQxOiAnIlJY
MiInCiAgICBhbnQxMDogJyJSWDIiJwogICAgYW50MTE6ICciUlgyIicKICAgIGFudDEyOiAnIlJY
MiInCiAgICBhbnQxMzogJyJSWDIiJwogICAgYW50MTQ6ICciUlgyIicKICAgIGFudDE1OiAnIlJY
MiInCiAgICBhbnQxNjogJyJSWDIiJwogICAgYW50MTc6ICciUlgyIicKICAgIGFudDE4OiAnIlJY
MiInCiAgICBhbnQxOTogJyJSWDIiJwogICAgYW50MjogJyJSWDIiJwogICAgYW50MjA6ICciUlgy
IicKICAgIGFudDIxOiAnIlJYMiInCiAgICBhbnQyMjogJyJSWDIiJwogICAgYW50MjM6ICciUlgy
IicKICAgIGFudDI0OiAnIlJYMiInCiAgICBhbnQyNTogJyJSWDIiJwogICAgYW50MjY6ICciUlgy
IicKICAgIGFudDI3OiAnIlJYMiInCiAgICBhbnQyODogJyJSWDIiJwogICAgYW50Mjk6ICciUlgy
IicKICAgIGFudDM6ICciUlgyIicKICAgIGFudDMwOiAnIlJYMiInCiAgICBhbnQzMTogJyJSWDIi
JwogICAgYW50NDogJyJSWDIiJwogICAgYW50NTogJyJSWDIiJwogICAgYW50NjogJyJSWDIiJwog
ICAgYW50NzogJyJSWDIiJwogICAgYW50ODogJyJSWDIiJwogICAgYW50OTogJyJSWDIiJwogICAg
YncwOiAnMCcKICAgIGJ3MTogJzAnCiAgICBidzEwOiAnMCcKICAgIGJ3MTE6ICcwJwogICAgYncx
MjogJzAnCiAgICBidzEzOiAnMCcKICAgIGJ3MTQ6ICcwJwogICAgYncxNTogJzAnCiAgICBidzE2
OiAnMCcKICAgIGJ3MTc6ICcwJwogICAgYncxODogJzAnCiAgICBidzE5OiAnMCcKICAgIGJ3Mjog
JzAnCiAgICBidzIwOiAnMCcKICAgIGJ3MjE6ICcwJwogICAgYncyMjogJzAnCiAgICBidzIzOiAn
MCcKICAgIGJ3MjQ6ICcwJwogICAgYncyNTogJzAnCiAgICBidzI2OiAnMCcKICAgIGJ3Mjc6ICcw
JwogICAgYncyODogJzAnCiAgICBidzI5OiAnMCcKICAgIGJ3MzogJzAnCiAgICBidzMwOiAnMCcK
ICAgIGJ3MzE6ICcwJwogICAgYnc0OiAnMCcKICAgIGJ3NTogJzAnCiAgICBidzY6ICcwJwogICAg
Ync3OiAnMCcKICAgIGJ3ODogJzAnCiAgICBidzk6ICcwJwogICAgY2VudGVyX2ZyZXEwOiBmcmVx
CiAgICBjZW50ZXJfZnJlcTE6IGZyZXEKICAgIGNlbnRlcl9mcmVxMTA6ICcwJwogICAgY2VudGVy
X2ZyZXExMTogJzAnCiAgICBjZW50ZXJfZnJlcTEyOiAnMCcKICAgIGNlbnRlcl9mcmVxMTM6ICcw
JwogICAgY2VudGVyX2ZyZXExNDogJzAnCiAgICBjZW50ZXJfZnJlcTE1OiAnMCcKICAgIGNlbnRl
cl9mcmVxMTY6ICcwJwogICAgY2VudGVyX2ZyZXExNzogJzAnCiAgICBjZW50ZXJfZnJlcTE4OiAn
MCcKICAgIGNlbnRlcl9mcmVxMTk6ICcwJwogICAgY2VudGVyX2ZyZXEyOiAnMCcKICAgIGNlbnRl
cl9mcmVxMjA6ICcwJwogICAgY2VudGVyX2ZyZXEyMTogJzAnCiAgICBjZW50ZXJfZnJlcTIyOiAn
MCcKICAgIGNlbnRlcl9mcmVxMjM6ICcwJwogICAgY2VudGVyX2ZyZXEyNDogJzAnCiAgICBjZW50
ZXJfZnJlcTI1OiAnMCcKICAgIGNlbnRlcl9mcmVxMjY6ICcwJwogICAgY2VudGVyX2ZyZXEyNzog
JzAnCiAgICBjZW50ZXJfZnJlcTI4OiAnMCcKICAgIGNlbnRlcl9mcmVxMjk6ICcwJwogICAgY2Vu
dGVyX2ZyZXEzOiAnMCcKICAgIGNlbnRlcl9mcmVxMzA6ICcwJwogICAgY2VudGVyX2ZyZXEzMTog
JzAnCiAgICBjZW50ZXJfZnJlcTQ6ICcwJwogICAgY2VudGVyX2ZyZXE1OiAnMCcKICAgIGNlbnRl
cl9mcmVxNjogJzAnCiAgICBjZW50ZXJfZnJlcTc6ICcwJwogICAgY2VudGVyX2ZyZXE4OiAnMCcK
ICAgIGNlbnRlcl9mcmVxOTogJzAnCiAgICBjbG9ja19yYXRlOiAwZTAKICAgIGNsb2NrX3NvdXJj
ZTA6ICcnCiAgICBjbG9ja19zb3VyY2UxOiAnJwogICAgY2xvY2tfc291cmNlMjogJycKICAgIGNs
b2NrX3NvdXJjZTM6ICcnCiAgICBjbG9ja19zb3VyY2U0OiAnJwogICAgY2xvY2tfc291cmNlNTog
JycKICAgIGNsb2NrX3NvdXJjZTY6ICcnCiAgICBjbG9ja19zb3VyY2U3OiAnJwogICAgY29tbWVu
dDogJycKICAgIGRjX29mZnNfZW5iMDogJyIiJwogICAgZGNfb2Zmc19lbmIxOiAnIiInCiAgICBk
Y19vZmZzX2VuYjEwOiAnIiInCiAgICBkY19vZmZzX2VuYjExOiAnIiInCiAgICBkY19vZmZzX2Vu
YjEyOiAnIiInCiAgICBkY19vZmZzX2VuYjEzOiAnIiInCiAgICBkY19vZmZzX2VuYjE0OiAnIiIn
CiAgICBkY19vZmZzX2VuYjE1OiAnIiInCiAgICBkY19vZmZzX2VuYjE2OiAnIiInCiAgICBkY19v
ZmZzX2VuYjE3OiAnIiInCiAgICBkY19vZmZzX2VuYjE4OiAnIiInCiAgICBkY19vZmZzX2VuYjE5
OiAnIiInCiAgICBkY19vZmZzX2VuYjI6ICciIicKICAgIGRjX29mZnNfZW5iMjA6ICciIicKICAg
IGRjX29mZnNfZW5iMjE6ICciIicKICAgIGRjX29mZnNfZW5iMjI6ICciIicKICAgIGRjX29mZnNf
ZW5iMjM6ICciIicKICAgIGRjX29mZnNfZW5iMjQ6ICciIicKICAgIGRjX29mZnNfZW5iMjU6ICci
IicKICAgIGRjX29mZnNfZW5iMjY6ICciIicKICAgIGRjX29mZnNfZW5iMjc6ICciIicKICAgIGRj
X29mZnNfZW5iMjg6ICciIicKICAgIGRjX29mZnNfZW5iMjk6ICciIicKICAgIGRjX29mZnNfZW5i
MzogJyIiJwogICAgZGNfb2Zmc19lbmIzMDogJyIiJwogICAgZGNfb2Zmc19lbmIzMTogJyIiJwog
ICAgZGNfb2Zmc19lbmI0OiAnIiInCiAgICBkY19vZmZzX2VuYjU6ICciIicKICAgIGRjX29mZnNf
ZW5iNjogJyIiJwogICAgZGNfb2Zmc19lbmI3OiAnIiInCiAgICBkY19vZmZzX2VuYjg6ICciIicK
ICAgIGRjX29mZnNfZW5iOTogJyIiJwogICAgZGV2X2FkZHI6ICciIicKICAgIGRldl9hcmdzOiAn
Im51bV9yZWN2X2ZyYW1lcz0xMjgiJwogICAgZ2FpbjA6IGdhaW4KICAgIGdhaW4xOiBnYWluCiAg
ICBnYWluMTA6ICcwJwogICAgZ2FpbjExOiAnMCcKICAgIGdhaW4xMjogJzAnCiAgICBnYWluMTM6
ICcwJwogICAgZ2FpbjE0OiAnMCcKICAgIGdhaW4xNTogJzAnCiAgICBnYWluMTY6ICcwJwogICAg
Z2FpbjE3OiAnMCcKICAgIGdhaW4xODogJzAnCiAgICBnYWluMTk6ICcwJwogICAgZ2FpbjI6ICcw
JwogICAgZ2FpbjIwOiAnMCcKICAgIGdhaW4yMTogJzAnCiAgICBnYWluMjI6ICcwJwogICAgZ2Fp
bjIzOiAnMCcKICAgIGdhaW4yNDogJzAnCiAgICBnYWluMjU6ICcwJwogICAgZ2FpbjI2OiAnMCcK
ICAgIGdhaW4yNzogJzAnCiAgICBnYWluMjg6ICcwJwogICAgZ2FpbjI5OiAnMCcKICAgIGdhaW4z
OiAnMCcKICAgIGdhaW4zMDogJzAnCiAgICBnYWluMzE6ICcwJwogICAgZ2FpbjQ6ICcwJwogICAg
Z2FpbjU6ICcwJwogICAgZ2FpbjY6ICcwJwogICAgZ2Fpbjc6ICcwJwogICAgZ2Fpbjg6ICcwJwog
ICAgZ2Fpbjk6ICcwJwogICAgZ2Fpbl90eXBlMDogZGVmYXVsdAogICAgZ2Fpbl90eXBlMTogZGVm
YXVsdAogICAgZ2Fpbl90eXBlMTA6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTExOiBkZWZhdWx0CiAg
ICBnYWluX3R5cGUxMjogZGVmYXVsdAogICAgZ2Fpbl90eXBlMTM6IGRlZmF1bHQKICAgIGdhaW5f
dHlwZTE0OiBkZWZhdWx0CiAgICBnYWluX3R5cGUxNTogZGVmYXVsdAogICAgZ2Fpbl90eXBlMTY6
IGRlZmF1bHQKICAgIGdhaW5fdHlwZTE3OiBkZWZhdWx0CiAgICBnYWluX3R5cGUxODogZGVmYXVs
dAogICAgZ2Fpbl90eXBlMTk6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTI6IGRlZmF1bHQKICAgIGdh
aW5fdHlwZTIwOiBkZWZhdWx0CiAgICBnYWluX3R5cGUyMTogZGVmYXVsdAogICAgZ2Fpbl90eXBl
MjI6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTIzOiBkZWZhdWx0CiAgICBnYWluX3R5cGUyNDogZGVm
YXVsdAogICAgZ2Fpbl90eXBlMjU6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTI2OiBkZWZhdWx0CiAg
ICBnYWluX3R5cGUyNzogZGVmYXVsdAogICAgZ2Fpbl90eXBlMjg6IGRlZmF1bHQKICAgIGdhaW5f
dHlwZTI5OiBkZWZhdWx0CiAgICBnYWluX3R5cGUzOiBkZWZhdWx0CiAgICBnYWluX3R5cGUzMDog
ZGVmYXVsdAogICAgZ2Fpbl90eXBlMzE6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTQ6IGRlZmF1bHQK
ICAgIGdhaW5fdHlwZTU6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTY6IGRlZmF1bHQKICAgIGdhaW5f
dHlwZTc6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTg6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTk6IGRl
ZmF1bHQKICAgIGlxX2ltYmFsX2VuYjA6ICciIicKICAgIGlxX2ltYmFsX2VuYjE6ICciIicKICAg
IGlxX2ltYmFsX2VuYjEwOiAnIiInCiAgICBpcV9pbWJhbF9lbmIxMTogJyIiJwogICAgaXFfaW1i
YWxfZW5iMTI6ICciIicKICAgIGlxX2ltYmFsX2VuYjEzOiAnIiInCiAgICBpcV9pbWJhbF9lbmIx
NDogJyIiJwogICAgaXFfaW1iYWxfZW5iMTU6ICciIicKICAgIGlxX2ltYmFsX2VuYjE2OiAnIiIn
CiAgICBpcV9pbWJhbF9lbmIxNzogJyIiJwogICAgaXFfaW1iYWxfZW5iMTg6ICciIicKICAgIGlx
X2ltYmFsX2VuYjE5OiAnIiInCiAgICBpcV9pbWJhbF9lbmIyOiAnIiInCiAgICBpcV9pbWJhbF9l
bmIyMDogJyIiJwogICAgaXFfaW1iYWxfZW5iMjE6ICciIicKICAgIGlxX2ltYmFsX2VuYjIyOiAn
IiInCiAgICBpcV9pbWJhbF9lbmIyMzogJyIiJwogICAgaXFfaW1iYWxfZW5iMjQ6ICciIicKICAg
IGlxX2ltYmFsX2VuYjI1OiAnIiInCiAgICBpcV9pbWJhbF9lbmIyNjogJyIiJwogICAgaXFfaW1i
YWxfZW5iMjc6ICciIicKICAgIGlxX2ltYmFsX2VuYjI4OiAnIiInCiAgICBpcV9pbWJhbF9lbmIy
OTogJyIiJwogICAgaXFfaW1iYWxfZW5iMzogJyIiJwogICAgaXFfaW1iYWxfZW5iMzA6ICciIicK
ICAgIGlxX2ltYmFsX2VuYjMxOiAnIiInCiAgICBpcV9pbWJhbF9lbmI0OiAnIiInCiAgICBpcV9p
bWJhbF9lbmI1OiAnIiInCiAgICBpcV9pbWJhbF9lbmI2OiAnIiInCiAgICBpcV9pbWJhbF9lbmI3
OiAnIiInCiAgICBpcV9pbWJhbF9lbmI4OiAnIiInCiAgICBpcV9pbWJhbF9lbmI5OiAnIiInCiAg
ICBsb19leHBvcnQwOiAnRmFsc2UnCiAgICBsb19leHBvcnQxOiAnRmFsc2UnCiAgICBsb19leHBv
cnQxMDogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MTE6ICdGYWxzZScKICAgIGxvX2V4cG9ydDEyOiAn
RmFsc2UnCiAgICBsb19leHBvcnQxMzogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MTQ6ICdGYWxzZScK
ICAgIGxvX2V4cG9ydDE1OiAnRmFsc2UnCiAgICBsb19leHBvcnQxNjogJ0ZhbHNlJwogICAgbG9f
ZXhwb3J0MTc6ICdGYWxzZScKICAgIGxvX2V4cG9ydDE4OiAnRmFsc2UnCiAgICBsb19leHBvcnQx
OTogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MjogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MjA6ICdGYWxz
ZScKICAgIGxvX2V4cG9ydDIxOiAnRmFsc2UnCiAgICBsb19leHBvcnQyMjogJ0ZhbHNlJwogICAg
bG9fZXhwb3J0MjM6ICdGYWxzZScKICAgIGxvX2V4cG9ydDI0OiAnRmFsc2UnCiAgICBsb19leHBv
cnQyNTogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MjY6ICdGYWxzZScKICAgIGxvX2V4cG9ydDI3OiAn
RmFsc2UnCiAgICBsb19leHBvcnQyODogJ0ZhbHNlJwogICAgbG9fZXhwb3J0Mjk6ICdGYWxzZScK
ICAgIGxvX2V4cG9ydDM6ICdGYWxzZScKICAgIGxvX2V4cG9ydDMwOiAnRmFsc2UnCiAgICBsb19l
eHBvcnQzMTogJ0ZhbHNlJwogICAgbG9fZXhwb3J0NDogJ0ZhbHNlJwogICAgbG9fZXhwb3J0NTog
J0ZhbHNlJwogICAgbG9fZXhwb3J0NjogJ0ZhbHNlJwogICAgbG9fZXhwb3J0NzogJ0ZhbHNlJwog
ICAgbG9fZXhwb3J0ODogJ0ZhbHNlJwogICAgbG9fZXhwb3J0OTogJ0ZhbHNlJwogICAgbG9fc291
cmNlMDogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTE6IGludGVybmFsCiAgICBsb19zb3VyY2UxMDog
aW50ZXJuYWwKICAgIGxvX3NvdXJjZTExOiBpbnRlcm5hbAogICAgbG9fc291cmNlMTI6IGludGVy
bmFsCiAgICBsb19zb3VyY2UxMzogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTE0OiBpbnRlcm5hbAog
ICAgbG9fc291cmNlMTU6IGludGVybmFsCiAgICBsb19zb3VyY2UxNjogaW50ZXJuYWwKICAgIGxv
X3NvdXJjZTE3OiBpbnRlcm5hbAogICAgbG9fc291cmNlMTg6IGludGVybmFsCiAgICBsb19zb3Vy
Y2UxOTogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTI6IGludGVybmFsCiAgICBsb19zb3VyY2UyMDog
aW50ZXJuYWwKICAgIGxvX3NvdXJjZTIxOiBpbnRlcm5hbAogICAgbG9fc291cmNlMjI6IGludGVy
bmFsCiAgICBsb19zb3VyY2UyMzogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTI0OiBpbnRlcm5hbAog
ICAgbG9fc291cmNlMjU6IGludGVybmFsCiAgICBsb19zb3VyY2UyNjogaW50ZXJuYWwKICAgIGxv
X3NvdXJjZTI3OiBpbnRlcm5hbAogICAgbG9fc291cmNlMjg6IGludGVybmFsCiAgICBsb19zb3Vy
Y2UyOTogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTM6IGludGVybmFsCiAgICBsb19zb3VyY2UzMDog
aW50ZXJuYWwKICAgIGxvX3NvdXJjZTMxOiBpbnRlcm5hbAogICAgbG9fc291cmNlNDogaW50ZXJu
YWwKICAgIGxvX3NvdXJjZTU6IGludGVybmFsCiAgICBsb19zb3VyY2U2OiBpbnRlcm5hbAogICAg
bG9fc291cmNlNzogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTg6IGludGVybmFsCiAgICBsb19zb3Vy
Y2U5OiBpbnRlcm5hbAogICAgbWF4b3V0YnVmOiAnMCcKICAgIG1pbm91dGJ1ZjogJzAnCiAgICBu
Y2hhbjogJzInCiAgICBudW1fbWJvYXJkczogJzEnCiAgICBvdHc6ICcnCiAgICByeF9hZ2MwOiBE
ZWZhdWx0CiAgICByeF9hZ2MxOiBEZWZhdWx0CiAgICByeF9hZ2MxMDogRGVmYXVsdAogICAgcnhf
YWdjMTE6IERlZmF1bHQKICAgIHJ4X2FnYzEyOiBEZWZhdWx0CiAgICByeF9hZ2MxMzogRGVmYXVs
dAogICAgcnhfYWdjMTQ6IERlZmF1bHQKICAgIHJ4X2FnYzE1OiBEZWZhdWx0CiAgICByeF9hZ2Mx
NjogRGVmYXVsdAogICAgcnhfYWdjMTc6IERlZmF1bHQKICAgIHJ4X2FnYzE4OiBEZWZhdWx0CiAg
ICByeF9hZ2MxOTogRGVmYXVsdAogICAgcnhfYWdjMjogRGVmYXVsdAogICAgcnhfYWdjMjA6IERl
ZmF1bHQKICAgIHJ4X2FnYzIxOiBEZWZhdWx0CiAgICByeF9hZ2MyMjogRGVmYXVsdAogICAgcnhf
YWdjMjM6IERlZmF1bHQKICAgIHJ4X2FnYzI0OiBEZWZhdWx0CiAgICByeF9hZ2MyNTogRGVmYXVs
dAogICAgcnhfYWdjMjY6IERlZmF1bHQKICAgIHJ4X2FnYzI3OiBEZWZhdWx0CiAgICByeF9hZ2My
ODogRGVmYXVsdAogICAgcnhfYWdjMjk6IERlZmF1bHQKICAgIHJ4X2FnYzM6IERlZmF1bHQKICAg
IHJ4X2FnYzMwOiBEZWZhdWx0CiAgICByeF9hZ2MzMTogRGVmYXVsdAogICAgcnhfYWdjNDogRGVm
YXVsdAogICAgcnhfYWdjNTogRGVmYXVsdAogICAgcnhfYWdjNjogRGVmYXVsdAogICAgcnhfYWdj
NzogRGVmYXVsdAogICAgcnhfYWdjODogRGVmYXVsdAogICAgcnhfYWdjOTogRGVmYXVsdAogICAg
c2FtcF9yYXRlOiBzYW1wX3JhdGUKICAgIHNkX3NwZWMwOiAnJwogICAgc2Rfc3BlYzE6ICcnCiAg
ICBzZF9zcGVjMjogJycKICAgIHNkX3NwZWMzOiAnJwogICAgc2Rfc3BlYzQ6ICcnCiAgICBzZF9z
cGVjNTogJycKICAgIHNkX3NwZWM2OiAnJwogICAgc2Rfc3BlYzc6ICcnCiAgICBzaG93X2xvX2Nv
bnRyb2xzOiAnRmFsc2UnCiAgICBzdHJlYW1fYXJnczogJycKICAgIHN0cmVhbV9jaGFuczogJ1td
JwogICAgc3luYzogc3luYwogICAgdGltZV9zb3VyY2UwOiAnJwogICAgdGltZV9zb3VyY2UxOiAn
JwogICAgdGltZV9zb3VyY2UyOiAnJwogICAgdGltZV9zb3VyY2UzOiAnJwogICAgdGltZV9zb3Vy
Y2U0OiAnJwogICAgdGltZV9zb3VyY2U1OiAnJwogICAgdGltZV9zb3VyY2U2OiAnJwogICAgdGlt
ZV9zb3VyY2U3OiAnJwogICAgdHlwZTogZmMzMgogIHN0YXRlczoKICAgIGJ1c19zaW5rOiBmYWxz
ZQogICAgYnVzX3NvdXJjZTogZmFsc2UKICAgIGJ1c19zdHJ1Y3R1cmU6IG51bGwKICAgIGNvb3Jk
aW5hdGU6IFszNTAsIDI1Nl0KICAgIHJvdGF0aW9uOiAwCiAgICBzdGF0ZTogdHJ1ZQoKY29ubmVj
dGlvbnM6Ci0gW3VoZF91c3JwX3NvdXJjZV8wLCAnMCcsIHF0Z3VpX2ZyZXFfc2lua194XzAsICcw
J10KLSBbdWhkX3VzcnBfc291cmNlXzAsICcxJywgcXRndWlfZnJlcV9zaW5rX3hfMCwgJzEnXQoK
bWV0YWRhdGE6CiAgZmlsZV9mb3JtYXQ6IDEK
--0000000000000fe16205b4741bd9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000000fe16205b4741bd9--


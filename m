Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 662AE5F9F78
	for <lists+usrp-users@lfdr.de>; Mon, 10 Oct 2022 15:34:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26910383D84
	for <lists+usrp-users@lfdr.de>; Mon, 10 Oct 2022 09:34:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665408846; bh=1VmK6bIpuvC+AbNkJT7Jeb6HvPrOBSwfG6cvhrPRP+Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=i4n0Jq71qm72eBQol44DPzJGOK3/BZGjcR7K6e9lA1xpktpfneLnhzOTfXGFLbMnF
	 zzM6pwAwV02AUUJAe8VCNMj3FpdZsw8JTIR9Ga1QN/cadipPDak/Na0e9Cka8Aw8s6
	 PEk/4nAHpC7jn8t2ryWOjUIgSgZzP5YtCbSZhl7H/hJNO5J5t5Vxi7NobCj0+arkW7
	 OtxdnciFAlOAhgSA3p4tNzz3GzZ3AInIwqbTBgBvWf82JB0c26vVmgEwbsueyVZxCh
	 CFItYU5TMSjwlyk8EgAEaPXYSzi90qM9jTTaXAz5tdMY6KeljjO+7P7y0gZAIfTvSi
	 hZJU5XtThohGQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 117A7383E62
	for <usrp-users@lists.ettus.com>; Mon, 10 Oct 2022 09:27:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="kxzH7nRk";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id r17so24869256eja.7
        for <usrp-users@lists.ettus.com>; Mon, 10 Oct 2022 06:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pgcjHBqcJGoJPviDcHFCfq+9gPisXomGKY1M8vq8mu8=;
        b=kxzH7nRk6uvbMlPMw4+ZDa65eOHhw3mZGbyD74QGCYcrmCFZSp3fPVygXIiD76PHIe
         RHIfEw/GTgcttiqH3HAFQM1UB9ZW44l6mwtXYfEh/nBCpRBKeYzUXp8OCDv1+pa4zO73
         ce6SIW+x5qNbgKIS/kXT+/W8E7tOyVBITq1iaL4RdXk1lNQZwdRHM6LxssO6H45M6Td7
         LL9WgBdP9jJZ4DzHC66iQLDU+AT6ar0E5286iDFfqZNa5bBA19qX+A9sZL8nfbpEfM+9
         B1WDeGDBEbRVVsieINlAgupgl1+4zJtW0v96vHGNynjmXP+w5KPBEKEJEgEwrvDMV5OP
         Iw/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pgcjHBqcJGoJPviDcHFCfq+9gPisXomGKY1M8vq8mu8=;
        b=HMfXfhgtWktQkdSu93SIZUUo7+3xSBkA1laq5EXSjbp6yxeq7BlJDtvXdJbEcN0rfz
         2YUSopQD7UjBRRla3RxGk+3HmR5NkHLHCVBwCyynDXT8G/Fp5W9+dI/pHJsdjwjDBFVf
         zLwwJHadJGJxvTBZR815vN/Q3NzLjIXFE5JrftrEUnrTz+NEuurvxhnF/FvqAJqkv/XS
         t/qQVp/GhiaLlGxijab+yBpci2lkJ6tnj8GaOlGaZJdCNPiIS3ORMaKUO6Aus5mT81+7
         e6eyWYargVoG0sxpTqRrsniGSDoCJXazM/WHdo8sk5RHDea320LHbZ8fUon4gCSt3H4L
         BBWA==
X-Gm-Message-State: ACrzQf1xUBtBCY9h/eX3vpn+KlZnVlkdTrx8nv9+ND4OO12wtOIJbGRT
	HD50Fp9yp2MgoWgd3FWH2TYB+ia5Vk3tHpririuYEFqhClhxOWYo
X-Google-Smtp-Source: AMsMyM6AY8xSoByVU7lSXb8Q8wEu8rRwlCbtLERK0ZfqIQBSuYonPjAt94CW2nUQfgk79f+971tu0fxRVc/qQDYJvsw=
X-Received: by 2002:a17:906:c14f:b0:78d:105b:e57f with SMTP id
 dp15-20020a170906c14f00b0078d105be57fmr14856619ejc.672.1665408473905; Mon, 10
 Oct 2022 06:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
In-Reply-To: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 10 Oct 2022 08:27:37 -0500
Message-ID: <CAFche=j-ocCOPm8E1o+72KQAGaGEBLw33qm+s=jsdAN1pECeWg@mail.gmail.com>
To: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>
Message-ID-Hash: 22J3G2ETO7EYJTLXNITDZVSSYV3GUCYL
X-Message-ID-Hash: 22J3G2ETO7EYJTLXNITDZVSSYV3GUCYL
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 - loopback test error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/22J3G2ETO7EYJTLXNITDZVSSYV3GUCYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1725050783237280862=="

--===============1725050783237280862==
Content-Type: multipart/alternative; boundary="0000000000007e53f905eaae20eb"

--0000000000007e53f905eaae20eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I believe the CODEC loopback tests the connection between the FPGA and the
AD3961. Maybe the device is damaged? I would try putting a clean SD card
image on there and see if it's still happening. If so, I would try
different cables, power supplies, and host Ethernet device to rule those
out. If that still doesn't work then maybe you need to RMA.

You might get more insight by turning on verbose logging (debug or trace
levels) and looking at e3xx_radio_control_impl::loopback_self_test(). See
also https://kb.ettus.com/The_UHD_logging_facility and
https://files.ettus.com/manual/page_logging.html.

Wade

On Mon, Oct 10, 2022 at 5:42 AM Peter Featherstone (XENINT) <
peter.featherstone@xenint.com> wrote:

> Hi,
>
>
>
> I=E2=80=99m using an E320 with libuhd 4.2.0.1.
>
> I regularly get this error when running `uhd_usrp_probe` or starting a
> capture with libuhd where the CODEC loopback tests hangs for ever.
>
> The log is as follows:
>
>
>
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.1,type=3De3xx,product=3De320,serial=3D31C8CC7,name=
=3Dni-e320-31C8CC7,fpga=3D1G,claimed=3DFalse,skip_init=3D1
>
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.2.0.1-g321295fb
>
> [INFO] [MPM.main] Spawning RPC process...
>
> [INFO] [MPM.PeriphManager] Device serial number: 31C8CC7
>
> [INFO] [MPM.RPCServer] RPC server ready!
>
> [INFO] [MPM.RPCServer] Spawning watchdog task...
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
> [INFO] [MPM.PeriphManager] Device serial number: 31C8CC7
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.1,type=3De3xx,product=3De320,serial=3D31C8CC7,name=
=3Dni-e320-31C8CC7,fpga=3D1G,claimed=3DFalse,find_all=3D1
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `find_all=3D1,fpga=3D1G,mgmt_addr=3D192.168.10.1,name=3Dni-e320-31C8CC7,p=
roduct=3De320'.
>
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
>
> Target sock buff size: 2500000 bytes.
>
> Actual sock buff size: 212992 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.rmem_max=3D2500000
>
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>
> Target sock buff size: 2500000 bytes.
>
> Actual sock buff size: 212992 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>
> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the
> minimum recommended size of 816000 and may result in dropped packets on
> some NICs
>
> [WARNING] [UDP] The current send_buff_size of 212992 is less than the
> minimum recommended size of 307200 and may result in dropped packets on
> some NICs
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>
>
>
> At which point it hangs for ever.
>
> The only way I can get out of this is continuously power cycle it and
> reload the image until it succeeds.
>
> Anybody seen this before and know how to fix it?
>
> Many thanks,
>
>
>
>
>
> *Peter Featherstone *
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007e53f905eaae20eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I believe the CODEC loopback tests the connection bet=
ween the FPGA and the AD3961. Maybe the device is damaged? I would try putt=
ing a clean SD card image on there and see if it&#39;s still happening. If =
so, I would try different cables, power supplies, and host Ethernet device =
to rule those out. If that still doesn&#39;t work then maybe you need to RM=
A.</div><div><br></div><div>You might get more insight by turning on verbos=
e logging (debug or trace levels) and looking at
<span class=3D"gmail-pl-en">e3xx_radio_control_impl::loopback_self_test</sp=
an>(). See also <a href=3D"https://kb.ettus.com/The_UHD_logging_facility">h=
ttps://kb.ettus.com/The_UHD_logging_facility</a> and <a href=3D"https://fil=
es.ettus.com/manual/page_logging.html">https://files.ettus.com/manual/page_=
logging.html</a>.</div><div><br></div><div>Wade<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 10, 20=
22 at 5:42 AM Peter Featherstone (XENINT) &lt;<a href=3D"mailto:peter.feath=
erstone@xenint.com">peter.featherstone@xenint.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-27031855=
47812681748">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-GB">
<div class=3D"m_-2703185547812681748WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m using an E320 with libuhd 4.2.0.1.<u></u=
><u></u></p>
<p class=3D"MsoNormal">I regularly get this error when running `uhd_usrp_pr=
obe` or starting a capture with libuhd where the CODEC loopback tests hangs=
 for ever.<u></u><u></u></p>
<p class=3D"MsoNormal">The log is as follows:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_10=
7400; UHD_<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.1,type=3De3xx,product=3De320,serial=3D31C8=
CC7,name=3Dni-e320-31C8CC7,fpga=3D1G,claimed=3DFalse,skip_init=3D1<u></u><u=
></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.main] Launching USRP/MPM, version: 4.2.0=
.1-g321295fb<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.main] Spawning RPC process...<u></u><u><=
/u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device serial number: 31C=
8CC7<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.RPCServer] RPC server ready!<u></u><u></=
u></p>
<p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Spawning watchdog task...<u><=
/u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Claimed device without full initializa=
tion.<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Starting update. This may=
 take a while.<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing component `fpg=
a&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing component `dts=
&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Update component function=
 succeeded.<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Resetting peripheral manager.=
<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device serial number: 31C=
8CC7<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.1,type=3De3xx,product=3De320,serial=3D31C8=
CC7,name=3Dni-e320-31C8CC7,fpga=3D1G,claimed=3DFalse,find_all=3D1<u></u><u>=
</u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called with device=
 args `find_all=3D1,fpga=3D1G,mgmt_addr=3D192.168.10.1,name=3Dni-e320-31C8C=
C7,product=3De320&#39;.<u></u><u></u></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The recv buffer could not be resized=
 sufficiently.<u></u><u></u></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<u></u><u></u><=
/p>
<p class=3D"MsoNormal">Actual sock buff size: 212992 bytes.<u></u><u></u></=
p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<u></u><u></u></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.rmem_max=3D25000=
00<u></u><u></u></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<u></u><u></u></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<u></u><u></u><=
/p>
<p class=3D"MsoNormal">Actual sock buff size: 212992 bytes.<u></u><u></u></=
p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<u></u><u></u></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<u></u><u></u></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The current recv_buff_size of 212992=
 is less than the minimum recommended size of 816000 and may result in drop=
ped packets on some NICs<u></u><u></u></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The current send_buff_size of 212992=
 is less than the minimum recommended size of 307200 and may result in drop=
ped packets on some NICs<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 0 ...<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">At which point it hangs for ever.<u></u><u></u></p>
<p class=3D"MsoNormal">The only way I can get out of this is continuously p=
ower cycle it and reload the image until it succeeds.<u></u><u></u></p>
<p class=3D"MsoNormal">Anybody seen this before and know how to fix it?<u><=
/u><u></u></p>
<p class=3D"MsoNormal">Many thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;color:rgb(13,13,13)=
">Peter Featherstone
<br>
<br>
</span></b><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000007e53f905eaae20eb--

--===============1725050783237280862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1725050783237280862==--

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 869E42F4240
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 04:13:46 +0100 (CET)
Received: from [::1] (port=45460 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzWbP-0005Ux-6o; Tue, 12 Jan 2021 22:13:43 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:47027)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kzWbL-0005PL-Ik
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 22:13:39 -0500
Received: by mail-ot1-f49.google.com with SMTP id w3so574797otp.13
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 19:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bop/FtX99ByIYOOAUeKWqasMgYxbGEYTXhopyh8QkR0=;
 b=Y/5Y2qjetJvA6XYYJ2nuPaT/jjK1y7rM85q/CC8uxElHbLh3MRs8zB5Nbi6eT2MDld
 +QHiRUpowNIP/Oyb7i/ZIvik1NU9V822ESWYuz6idQuTfOJXbmE48BKGNIpz9mOjTlaD
 yu7+bTOHMasGmjxz1ZOlacypcW/EA4FzKBQlK9XISc/WCeiU05L2n+pd8w+dP7IAGBQq
 2uFQQ1WojronHA13CH7HkfDTi5PIxNfe+PUi4wSoYsinhTaDaLU4aOC3zpS4+kdy8Re2
 J9mSZZU439H8wgACV47YpLKCG8OQxNJ8b6qOyycRSqssHdY0pX4H1Q1v6Ge3E3k1ULcY
 B7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bop/FtX99ByIYOOAUeKWqasMgYxbGEYTXhopyh8QkR0=;
 b=XkOVYxAyGruQbz36WbliFsuMUt4r/EwYzotTEEDss3yZn04sz7D2plxb6qVJMbZRUv
 n93H+Rr4EtS2JmUweLRmy5EHGXljOUmCAhykAP3V4ydx0d0zPqmZfPjAeoeUyWXwCdLZ
 7LWBCK/t3ZCEdbFON2RCoHINr0CEXUSpmoHoQ2um3Dynjd7cu/KMqSqXjod/u/00h4yB
 r7aREt8ZWHKL0r4pPJUJcfAew4i1Oq78O3KNFGXioc999Hs/bS6F5fV5m2LOtmG8IKoH
 tVOf2sKXTevgxqTaa6iGVh6KLlyc06PvTLzr4aUXV2Qtj3I84uVxDXEtJWpzkASbGuZa
 Tv/Q==
X-Gm-Message-State: AOAM532HjgZAZ4xU0xdgnZ6lNNWUqYKLNr9Vh4AblOo0qUfIAOrSv/N4
 ADOOI+ddiGuLpDBYeaN0GfwPKaocwmWZsVNGXweSGw==
X-Google-Smtp-Source: ABdhPJy75gzEqudGCQkOCfljc64ThirIGxowru10qk7XVF4WKW638hLc85tOnaAuV2HoTMjs0sn5tZhfYnYPlRvNegM=
X-Received: by 2002:a9d:4e87:: with SMTP id v7mr1598802otk.302.1610507578531; 
 Tue, 12 Jan 2021 19:12:58 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT6AyXGPERxgJQiDoyvhxPcLSZts2SmnrhE0kyMvr7fXw@mail.gmail.com>
 <CAL7q81s=-MRW3ufTmcjZ5Fm5KVsz4MQtTKpPLbrD5Hk4xvauvA@mail.gmail.com>
In-Reply-To: <CAL7q81s=-MRW3ufTmcjZ5Fm5KVsz4MQtTKpPLbrD5Hk4xvauvA@mail.gmail.com>
Date: Tue, 12 Jan 2021 22:12:47 -0500
Message-ID: <CAB__hTQkKGCBMddVJPw75RAq=2E9zdEMCXLr0oruCObFNPd=dw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Testing single RFNoC block produces
 out-of-sequence (S) errors
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3600692911828861330=="
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

--===============3600692911828861330==
Content-Type: multipart/alternative; boundary="00000000000020ae9705b8bf8484"

--00000000000020ae9705b8bf8484
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,
I had not tried the "netstat -s" but after your suggestion I did and the
"receive buffer errors" does increase after running my application.  I had
previously increased the ring buffer size to  the max 4096.
Rob

On Mon, Jan 11, 2021 at 9:50 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Rob,
>
> If you run netstat -s before and after running your flowgraph, do you see
> "receive buffer errors" in the UDP section increasing? I imagine you've
> tried this but just in case: have you increased the ring buffer size with
> "sudo ethtool -G <interface> tx 4096 rx 4096"?
>
> Jonathon
>
> On Tue, Jan 5, 2021 at 6:08 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I created a custom pulse-detector block which attempts to pass/discard
>> samples based upon an instantaneous power estimate. Each set of
>> consecutively passed samples constitutes a "burst" (i.e. the EOB is set on
>> the TLAST corresponding to the final passed sample of the burst).  A burst
>> can have as few as 1 sample because my block does not prevent this.
>>
>> The block does what I expect in the testbench and even in the FPGA binary
>> when using the same data as the testbench.  However, when using a long
>> input stream (~250MSamps from previous recording that I have handy) to test
>> this block running in the FPGA, I get out-of-sequence errors on receive. My
>> graph is tx_streamer => pulse_detector => rx_streamer (actually, my
>> pulse_detector is a 2x2 block so there are 2 tx_streamers and 2
>> rx_streamers, all of which are run in separate threads).
>>
>> I am wondering if the Sequence errors have nothing to do with my block
>> but rather are related to the way Ubuntu handles incoming Ethernet data
>> such that perhaps it is running out of RX descriptors. I have tried slowing
>> down my Transmit and seen some improvement but without eliminating the
>> errors completely. So, I'm wondering what suggestions others might have.
>> My ideas are:
>> * invest some time to get DPDK working.  With this, perhaps Sequence
>> errors cannot occur??
>> * try slowing down my Tx even further?
>> * create artificial data sets (rather than real collected data) such that
>> I can control the length of the output pulses
>>
>> Let me know if you have any suggestions.
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000020ae9705b8bf8484
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathon,<div>I had not tried the &quot;netstat -s&quot=
; but after your suggestion I did and the &quot;receive buffer errors&quot;=
 does increase after running my application.=C2=A0 I had previously increas=
ed the ring buffer size to=C2=A0 the max 4096.</div><div>Rob</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, J=
an 11, 2021 at 9:50 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pend=
lum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br><=
/div><div>If you run netstat -s before and after running your flowgraph, do=
 you see &quot;receive buffer errors&quot; in the UDP section increasing? I=
 imagine you&#39;ve tried this but just in case: have you increased the rin=
g buffer size with &quot;sudo ethtool -G &lt;interface&gt; tx 4096 rx 4096&=
quot;?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 5, 2021 at 6:08 P=
M Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I =
created a custom pulse-detector block which attempts to pass/discard sample=
s based upon an instantaneous power estimate. Each set of consecutively pas=
sed samples constitutes a &quot;burst&quot; (i.e. the EOB is set on the TLA=
ST corresponding to the final passed sample of the burst).=C2=A0 A burst ca=
n have as few as 1 sample because my block does not prevent this.</div><div=
><br></div><div>The block does what I expect in the testbench and even in t=
he FPGA binary when using the same data as the testbench.=C2=A0 However, wh=
en using a long input stream (~250MSamps from previous recording that I hav=
e handy) to test this block running in the FPGA, I get out-of-sequence erro=
rs on receive. My graph is tx_streamer =3D&gt; pulse_detector =3D&gt; rx_st=
reamer (actually, my pulse_detector is a 2x2 block so there are 2 tx_stream=
ers and 2 rx_streamers, all of which are run in separate threads).</div><di=
v><br></div><div>I am wondering if the Sequence errors have nothing to do w=
ith my block but rather are related to the way Ubuntu handles incoming Ethe=
rnet data such that perhaps it is running out of RX descriptors. I have tri=
ed slowing down my Transmit and seen some improvement but without eliminati=
ng the errors completely. So, I&#39;m wondering what suggestions others mig=
ht have.=C2=A0 My ideas are:</div><div>* invest some time to get DPDK worki=
ng.=C2=A0 With this, perhaps Sequence errors cannot occur??</div><div>* try=
=C2=A0slowing down my Tx even further?</div><div>* create artificial data s=
ets (rather than real collected data) such that I can control the length of=
 the output pulses</div><div><br></div><div>Let me know if you have any sug=
gestions.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000020ae9705b8bf8484--


--===============3600692911828861330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3600692911828861330==--


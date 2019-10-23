Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF0CE2387
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2019 21:57:54 +0200 (CEST)
Received: from [::1] (port=47518 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNMlT-00033o-NJ; Wed, 23 Oct 2019 15:57:51 -0400
Received: from mail-lj1-f174.google.com ([209.85.208.174]:39555)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iNMlQ-00030Y-01
 for usrp-users@lists.ettus.com; Wed, 23 Oct 2019 15:57:48 -0400
Received: by mail-lj1-f174.google.com with SMTP id y3so22432972ljj.6
 for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2019 12:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PgwcxJwqo8kTtB+MAaFpGzPz5eynQTutP1xVEG4npJY=;
 b=djQ3Z2gGua3QvrR8w7U0t1ZLTwe6VYQQVupl/iqoCJ8nLy/sd/HWsdwSoeKFiijIpH
 nWdYqICoM4MYkIUVRim+HGA2KRKMATHDBAxHDD5wks7BpDDgHg2bHGQYnxEwWfIRByqw
 rsqNnBNThcnTLbtiXPL2AxbuLxWl23PeXS9686eRqfitkDP1F8FBqPvaC8hjdDlxpDJZ
 0thNw0f8vN2yziab0nTmrkDGE3ql8N4QxrM2F3MxyqpZFsdCA+esPMnNQkbjlCeYWrDq
 u2+Ck0FeyeWJE6xAp57goAwyWXFQwdsVvvu3zru53j3KWRD1+KwQLy9J+KLspT4vzrTg
 Zi5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PgwcxJwqo8kTtB+MAaFpGzPz5eynQTutP1xVEG4npJY=;
 b=LjGAC3kQ7KtDnZSWd3614O1RfddIRRvnkW+1vjRSmq+k8v7Z9GxFXV7/91t+bsJG4j
 ZnwB38KzQzt6zk+LIAdZQ75U/BFp2GqgVaPXFwtJ9G7vNBnNlibdIpQTOkSe6NaS0wHT
 si3j3uQyTABnwlhD2bYD+IljkwC8YC7prT9+hRs763IuXR5wizZ4W32RhdUHwb9lVpPN
 4cs7LWEq6gqcMnxCKhoq8dOJPYHtYjqvECR83zntIOEegk4zVJl/s4Q7X7k1hBL/VEBN
 lCh2FC2Qj6yOv0Kl29NCIx4T6YELkVs7k1G4fkhjgzNluE3zZGOLsIlL9+/v1QRrDVzy
 dG2Q==
X-Gm-Message-State: APjAAAUJ+Hm28S9PoVlEgKJhG/XKGsHsrcrlDTDJ3q3SIaljO7fvRhef
 WXcxEPSLdGklfA+tj+EpVrdReKoY1PmWs/ER8CVQ1PNQ
X-Google-Smtp-Source: APXvYqz0evhc87s+c3LNZbrlgBBTUcJ+U4fuPAzKpSGf2v/Ts8mX3CxZQ7FMhVU9Hh1m+y4tN7ZBAF8S1byL2aVdJ08=
X-Received: by 2002:a2e:808f:: with SMTP id i15mr3216688ljg.24.1571860626423; 
 Wed, 23 Oct 2019 12:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAEJWbW022J-UCzT+hs-dTbUGSXTSzQDMkC27tHwsk5rL1BnsUg@mail.gmail.com>
In-Reply-To: <CAEJWbW022J-UCzT+hs-dTbUGSXTSzQDMkC27tHwsk5rL1BnsUg@mail.gmail.com>
Date: Wed, 23 Oct 2019 14:56:54 -0500
Message-ID: <CANf970Z3G9r1Ga9EeXnTM1tGHanOzmPLcnkmY7M=9_WoUrkMbg@mail.gmail.com>
To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>
Subject: Re: [USRP-users] TwinRX and UBX under same multiUSRP object on X310s
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8976962879100414901=="
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

--===============8976962879100414901==
Content-Type: multipart/alternative; boundary="000000000000467747059599525d"

--000000000000467747059599525d
Content-Type: text/plain; charset="UTF-8"

Carlos,

You're correct that currently we can't currently use a TwinRX and a UBX in
the same chassis without running into sample rate / tick rate conflicts. I
would guess that this would extend to a chassis with UBX boards and a
chassis with TwinRX boards if they're encapsulated in the same multi-usrp
object AND streamer. I haven't tried it myself, but I have a feeling that
you might be able to run things correctly if you split each X310 out into
its own streamer (benchmark rate uses a single streamer).

-Sam

On Tue, Oct 22, 2019 at 9:33 AM Carlos Bocanegra via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> Can we have daughterboards TwinRX and UBX working under the same multiUSRP
> object? For instance, two TwinRX attached to one USRP and two UBX attached
> to another USRP creating 6 synchronized and phased aligned receiver
> channels?
>
> The discussion below stated that the sampling rate mismatch (100Msps for
> the TwinRX and 200Msps for the UBX) do not allow for simultaneous operation
> under the same USRP. But what about different USRPs?
> https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/msg00021.html
>
> If I try running the benchmark_rate having two TwinRX on the address 70.2
> and two UBX on the 60.2 like:
> *>> sudo /usr/local/lib/uhd/examples/benchmark_rate --args
> "addr0=192.168.70.2,addr1=192.168.60.2" --rx_channels 0,1,2,3 --rx_subdev
> "A:0 B:0" --rx_rate 1e6 --ref external --pps external*
> I get the error:
> *RuntimeError: Conflicting tick rates: One neighbouring block specifies
> 2e+08 MHz, another 1e+08 MHz.*
>
> I also tried changing the master clock rate to see if we can match them,
> but then I get that the X310 can't change their master clock rate at
> runtime, even when I set these parameters as "stream_args" when I create
> the usrp_source object.
>
> Thanks,
> Carlos
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000467747059599525d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Carlos,</div><div><br></div><div>You&#39;re correct t=
hat currently we can&#39;t currently use a TwinRX and a UBX in the same cha=
ssis without running into sample rate / tick rate conflicts. I would guess =
that this would extend to a chassis with UBX boards and a chassis with Twin=
RX boards if they&#39;re encapsulated in the same multi-usrp object AND str=
eamer. I haven&#39;t tried it myself, but I have a feeling that you might b=
e able to run things correctly if you split each X310 out into its own stre=
amer (benchmark rate uses a single streamer).</div><div><br></div><div>-Sam=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Oct 22, 2019 at 9:33 AM Carlos Bocanegra via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Can we have daughter=
boards TwinRX and UBX working under the same multiUSRP object? For instance=
, two TwinRX attached to one USRP and two UBX attached to another USRP crea=
ting 6 synchronized and phased aligned receiver channels?<br></div><div><br=
></div><div>The discussion below stated that the sampling rate mismatch (10=
0Msps for the TwinRX and 200Msps for the UBX) do not allow for simultaneous=
 operation under the same USRP. But what about different USRPs?<br></div><d=
iv><a href=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/m=
sg00021.html" target=3D"_blank">https://lists.gnu.org/archive/html/discuss-=
gnuradio/2017-07/msg00021.html</a></div><div><br></div><div>If I try runnin=
g the benchmark_rate having two TwinRX on the address 70.2 and two UBX on t=
he 60.2 like:<br></div><div><i>&gt;&gt; sudo /usr/local/lib/uhd/examples/be=
nchmark_rate --args &quot;addr0=3D192.168.70.2,addr1=3D192.168.60.2&quot; -=
-rx_channels 0,1,2,3 --rx_subdev &quot;A:0 B:0&quot; --rx_rate 1e6 --ref ex=
ternal --pps external</i></div><div>I get the error:<i><br></i></div><div><=
i>RuntimeError: Conflicting tick rates: One neighbouring block specifies 2e=
+08 MHz, another 1e+08 MHz.</i></div><div><i><br></i></div><div>I also trie=
d changing the master clock rate to see if we can match them, but then I ge=
t that the X310 can&#39;t change their master clock rate at runtime, even w=
hen I set these parameters as &quot;stream_args&quot; when I create the usr=
p_source object.</div><div><br></div><div>Thanks,</div><div>Carlos<br></div=
><div><i></i></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000467747059599525d--


--===============8976962879100414901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8976962879100414901==--


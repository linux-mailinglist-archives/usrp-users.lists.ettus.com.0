Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04325123B0D
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 00:46:18 +0100 (CET)
Received: from [::1] (port=46458 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihMXe-0000UT-71; Tue, 17 Dec 2019 18:46:14 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:37997)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ihMXZ-0000QX-89
 for usrp-users@lists.ettus.com; Tue, 17 Dec 2019 18:46:09 -0500
Received: by mail-lj1-f172.google.com with SMTP id k8so1564248ljh.5
 for <usrp-users@lists.ettus.com>; Tue, 17 Dec 2019 15:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WYAxj1vMkX2EtY5Gjb/p2PFY9jPYXFjcVG1YpEKuVEI=;
 b=w3yZjcTAZPGjCr/p7J2vhsZaqmZhTME6u9QauWh1XsdZ2U6e/GEwqoUxGy3rfjQHXr
 fKcpufmBUUIIYTiHnDLEauuLjFAQNX4yNde0yGgsSjQJLWkJqyQGOHMGLxSJBX9f2pd6
 kLeuxaCr1MtWfqavI86td5K82EqBCKOwuQretca0Je6jhCFoX+EO6YoUAyhv4dKex6Ku
 36HiHqKgUVXhWon1c8MZEhx6e2+MCU1oxYwK8HJmK5QR+ZhuNdQ+jCn5PGeV8EZDh+VC
 ra/Kvwj06BbfUnnKvFslWD/ghdumb2njcxdcebpOEMIZigQzFa2APXJVlr1pAYwymsxP
 OiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WYAxj1vMkX2EtY5Gjb/p2PFY9jPYXFjcVG1YpEKuVEI=;
 b=GRmocqcgJY94P6H7+wPljMv7Jk5sgTEEsFLbNqZzBk7ziBt9r4sioPnZJCR3G59raz
 AvnM/JaPG6C+zme+397EHKfoqXiwg03FpTTKF8ksXXpW9GAfjkqn4hCKSUEtjHyju1NC
 G6L2nZyuU0w3lEjWnVod8QT6wULikw80d3Q59XrNxwebiunyv1rEaLCud4E1deApS6ia
 +w1bmYPIrjZFUF0ubDFSXgaWfkDwbIEpeRJiOaQfW/npQ5QyJ5A24uyiEpRS9pjqoPX6
 XxRuOQnRFfyszXsz6cIBB73fasKHzaEEpdzove3uEDrZaoIk73wqTZTjeztfMttQcdQc
 VgVw==
X-Gm-Message-State: APjAAAWgpxEzUmcPWQza5U6qc/5hNj/GqpN44QTgTB6tWe8Tv9um63Uq
 LUH2x6NNVLjAmn7Xratq6Lgew4U0dIiDBQ4RBTEnebwA
X-Google-Smtp-Source: APXvYqzdk2FNjfpqcr0+PV0pyGXsy5G5CyxnkqtS+u4bGdps7XaO2TVM3jEvuThuWBPQv+vo+X6AfxH9w5GprSOfA74=
X-Received: by 2002:a2e:9691:: with SMTP id q17mr274901lji.91.1576626327936;
 Tue, 17 Dec 2019 15:45:27 -0800 (PST)
MIME-Version: 1.0
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
 <1273926885.14075492.1576508432546@mail.yahoo.com>
In-Reply-To: <1273926885.14075492.1576508432546@mail.yahoo.com>
Date: Tue, 17 Dec 2019 17:45:16 -0600
Message-ID: <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] set_tx_freq is not functioning properly
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3634695832662358653=="
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

--===============3634695832662358653==
Content-Type: multipart/alternative; boundary="00000000000038708b0599eeec11"

--00000000000038708b0599eeec11
Content-Type: text/plain; charset="UTF-8"

Does something like tx_waveforms[1] output a signal at the expected
frequency?

What are you using to measure the frequency output?

With respect to the 10MHz, this is the frequency of signals used to
discipline the internal timebase to an external source. I wouldn't expect
artifacts from this signal to be present at the TX port under normal
circumstances. Are you using an external reference? What about the GPSDO?

[1]
https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_waveforms.cpp

Sam Reiter
Ettus Research


On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi There,
>    I have bench marked X300 against my development PC. Then I took
> benchmark_rate code and modified a bit. Everything works fine except
> setting the center freq.
>    When ever I set the center frequency, there is no error returned by the
> call. But when I transmit the data, it doesn't appear in scope. Whenever I
> remove the code to set the center frequency, things work fine and I cann
> see a spike at 10Mhz which is default frequency I guess. Any clues?
>
> std::cout << boost::format("Setting TX Freq: %f MHz...") % (freq/1e6) <<
> std::endl;
> uhd::tune_request_t tune_request(freq);
> //usrp->set_tx_freq(tune_request, 0); - This line also doesn't work
> usrp->set_tx_freq(freq, 0);
> std::cout << boost::format("Actual TX Freq: %f MHz...") %
> (usrp->get_tx_freq(0)/1e6) << std::endl << std::endl;
>
> Thanks and Regards
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000038708b0599eeec11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does something like tx_waveforms[1] output a signal at the=
 expected frequency?<div><br></div><div>What are you using to measure the f=
requency output?</div><div><br></div><div>With respect to the 10MHz, this i=
s the frequency of signals used to discipline the internal timebase to an e=
xternal source. I wouldn&#39;t expect artifacts from this signal to be pres=
ent at the TX port under normal circumstances. Are you using an external re=
ference? What about the GPSDO?=C2=A0</div><div><br></div><div>[1]=C2=A0<a h=
ref=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_wa=
veforms.cpp">https://github.com/EttusResearch/uhd/blob/master/host/examples=
/tx_waveforms.cpp</a><br><div><br></div><div><div><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div =
dir=3D"ltr">Sam Reiter=C2=A0</div><div dir=3D"ltr">Ettus Research</div></di=
v></div></div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Dec 16, 2019 at 9:01 AM voonna santos=
h via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div><div style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:16px"><div dir=3D"ltr">Hi There,</div=
><div dir=3D"ltr">=C2=A0=C2=A0 I have bench marked X300 against my developm=
ent PC. Then I took benchmark_rate code and modified a bit. Everything work=
s fine except setting the center freq.</div><div dir=3D"ltr">=C2=A0=C2=A0 W=
hen ever I set the center frequency, there is no error returned by the call=
. But when I transmit the data, it doesn&#39;t appear in scope. Whenever I =
remove the code to set the center frequency, things work fine and I cann se=
e a spike at 10Mhz which is default frequency I guess. Any clues?</div><div=
 dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=3D"ltr">std::cout &lt;&lt;=
 boost::format(&quot;Setting TX Freq: %f MHz...&quot;) % (freq/1e6) &lt;&lt=
; std::endl;<br>uhd::tune_request_t tune_request(freq);<br><div>//usrp-&gt;=
set_tx_freq(tune_request, 0); - This line also doesn&#39;t work<br></div>us=
rp-&gt;set_tx_freq(freq, 0);<br>std::cout &lt;&lt; boost::format(&quot;Actu=
al TX Freq: %f MHz...&quot;) % (usrp-&gt;get_tx_freq(0)/1e6) &lt;&lt; std::=
endl &lt;&lt; std::endl;<br><br></div><div dir=3D"ltr">Thanks and Regards<b=
r></div></div></div></div>_______________________________________________<b=
r>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000038708b0599eeec11--


--===============3634695832662358653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3634695832662358653==--


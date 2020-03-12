Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B90D8183AA7
	for <lists+usrp-users@lfdr.de>; Thu, 12 Mar 2020 21:32:24 +0100 (CET)
Received: from [::1] (port=41548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jCUV6-0002iZ-La; Thu, 12 Mar 2020 16:32:16 -0400
Received: from mail-pl1-f175.google.com ([209.85.214.175]:40064)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mitch.grabner@gmail.com>)
 id 1jCUV2-0002Yk-Qe
 for usrp-users@lists.ettus.com; Thu, 12 Mar 2020 16:32:12 -0400
Received: by mail-pl1-f175.google.com with SMTP id h11so3114354plk.7
 for <usrp-users@lists.ettus.com>; Thu, 12 Mar 2020 13:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2g153KSCXhllMqqar4Zcr20/vavt037MoaVieERLcKs=;
 b=hjD1p4LO7gdUCYVKMrnArnzFeaghaAJlgYMyKDNKbN3PDHNyNwoOqXQUrkXVeeHdQw
 wfNCnvpiAPC/4FYmbpw377ysZH90f+Z0O3g8n9OwqDnhvyPVJLv0Yj0LXavJkJ9MFRP4
 mWVR5MmPZuHLc0Lf/oqlqk4CFCEnse4EUimedrPRp5GKxBa2vESi4aE7J0F39pHoOnl4
 oaH+GDlPi+CkLYyDFHFD4bdjw1faefnFJuwqTVVJgdh5JUCmQvWbhsTXs7m0P3DkeUsv
 1z8zLf+D7VeHh5nyDV/5YsS1iCC6UFQh4/sutIfNPijR7dO20fRKg3Y5oZnFDKxzngmD
 t71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2g153KSCXhllMqqar4Zcr20/vavt037MoaVieERLcKs=;
 b=gcp/leAt630Af11mV55C82IGXO7+hVYTZvYco2eWRtEVWIS1YqnrU1pMnR227/zz+H
 uFlc4qBfPlCNRzGj8C3YPfWQdtg25Lh78MD1ep4weP6urxMwoTq690EhXsRkyG+S9Kyy
 FBcpdzGa/V9/P+TXs2AcMaOnGq4UKxL1IEq7Mj5noYDd6DCRlTOUI1S80WkbqL0inFPA
 yy3gy7YAxuaB2575n3nxdY2VUup171qCnS28z7og4xHV6yWWLDqIaOzK7i8SlhS/jSpo
 K0gH0MSiTUPcijUSayU0Om80nqsZRuAj9jqvzwPqWXKE3XR010Bbw/n+zbPmRdxJaNzd
 VNZQ==
X-Gm-Message-State: ANhLgQ0yP1OgGj85+YjcqL0IdKsREhlsPQTwTszDMULAFx/yiwvdy4QO
 srkk7XKmD5BWLwyMcdbypClgKxu1kaCqZxLYFM0=
X-Google-Smtp-Source: ADFU+vtqski+kVhYOefQKkrFC9QgqUoOsfq3uepuBpnd8GbnM/UyJH08QtkccQjBd5w2XlzezLvuPFobX7WQhDv+fb0=
X-Received: by 2002:a17:902:7203:: with SMTP id
 ba3mr9441366plb.249.1584045091814; 
 Thu, 12 Mar 2020 13:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-5b10284f-32d3-4490-bb54-a0be4d201ad3-1584033180591@3c-app-gmx-bs38>
In-Reply-To: <trinity-5b10284f-32d3-4490-bb54-a0be4d201ad3-1584033180591@3c-app-gmx-bs38>
Date: Thu, 12 Mar 2020 16:31:20 -0400
Message-ID: <CAGXuw=iYfgU-N4YHfdnaPgUCvWXcCrE1Gd+PxXqNspvYgw60Vg@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] Timed commands (still) not executed properly:
 command time is in the past
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
From: Mitch Grabner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mitch Grabner <mitch.grabner@gmail.com>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5444472462669073347=="
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

--===============5444472462669073347==
Content-Type: multipart/alternative; boundary="00000000000001825d05a0ae3ded"

--00000000000001825d05a0ae3ded
Content-Type: text/plain; charset="UTF-8"

Hi Lukas,

I've had success doing a TX tune at some exec_time_tx (where exec_time_tx
is time_now() + some_delay) and then tuning RX at some exec_time_rx which
is exec_time_tx + trx_offset. As long as the trx_offset is the same between
runs, you should see phase coherence. I also like to use
get_time_last_pps() instead of get_time_now() to allow this to work across
distributed nodes.

p.s. make sure you sleep the thread until after your command time to make
sure the LOs are locked.

V/r,
Mitch

On Thu, Mar 12, 2020 at 1:13 PM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> After being able to tune RX and TX separately, I still do not get phase
> coherency.
>
> To debug, I added the following debug statements to set_tx_freq and
> set_rx_freq in uhd/host/lib/usrp/multi_usrp.cpp:
>
>     tune_result_t set_tx_freq(const tune_request_t &tune_request, size_t
> chan){
> #if 1
>         try {
>             time_spec_t now  = _tree->access<time_spec_t>(mb_root(0) /
> "time/now").get();
>             time_spec_t when = _tree->access<time_spec_t>(mb_root(0) /
> "time/cmd").get();
>             UHD_LOGGER_WARNING("MULTI_USRP") << boost::format("Tune TX at
> %d:%f for %d:%f") % now.get_full_secs() % now.get_frac_secs() %
> when.get_full_secs() % when.get_frac_secs();
>         } catch(...) {}
> #endif
>
> and for RX:
>
> #if 1
>         try
>         {
>             time_spec_t now  = _tree->access<time_spec_t>(mb_root(0) /
> "time/now").get();
>             time_spec_t when = _tree->access<time_spec_t>(mb_root(0) /
> "time/cmd").get();
>             UHD_LOGGER_WARNING("MULTI_USRP") << boost::format("Tune RX at
> %d:%f for %d:%f") % now.get_full_secs() % now.get_frac_secs() %
> when.get_full_secs() % when.get_frac_secs();
>         } catch(...){}
> #endif
>
> I use the following python code to send the timed commands from within
> gnuradio:
>
>   tune_req_rx = uhd.tune_request()
>   tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE
>   tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>   tune_req_rx.dsp_freq = -dsp_freq
>
>   tune_req_tx = uhd.tune_request()
>   tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE
>   tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>   tune_req_tx.dsp_freq = dsp_freq
>
>   exec_time = usrp_sink.get_time_now() + uhd.time_spec(1)
>   usrp_sink.set_command_time(exec_time)
>   usrp_source.set_command_time(exec_time)
>
>   res1 = usrp_source.set_center_freq(tune_req_rx, 1)
>   res2 = usrp_sink.set_center_freq(tune_req_tx)
>
>   usrp_sink.clear_command_time()
>   usrp_source.clear_command_time()
>
> As can be seen, I request the commands to be executed 1s from now. I only
> have one MBoard but two channels (X310+2xUBX160).
>
> Now when I execute this code I can see:
>
> [WARNING] [MULTI_USRP] Tune RX at 16:0.423319 for 16:0.423318
> [WARNING] [MULTI_USRP] Tune TX at 16:0.423493 for 16:0.423318
>
> It can be seen that the command time (while being the same for RX+TX) is
> NOT in the future as compared to the current time. If this is true then
> it's no surprise I don't see phase coherence (=constant phase offset for
> one dsp_freq).
>
>
> HOW ON EARTH can that be?
>
>
> Lukas
>
>
> PS: I tried adding larger time offsets but no change
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000001825d05a0ae3ded
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Lukas,</div><div><br></div><div>I=
&#39;ve had success doing a TX tune at some exec_time_tx (where exec_time_t=
x is time_now() + some_delay) and then tuning RX at some exec_time_rx which=
 is exec_time_tx + trx_offset. As long as the trx_offset is the same betwee=
n runs, you should see phase coherence. I also like to use get_time_last_pp=
s() instead of get_time_now() to allow this to work across distributed node=
s.</div><div><br></div><div>p.s. make sure you sleep the thread until after=
 your command time to make sure the LOs are locked.</div><div><br></div><di=
v>V/r,</div><div>Mitch<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 12, 2020 at 1:13 PM Lukas Haase=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hi,<br>
<br>
After being able to tune RX and TX separately, I still do not get phase coh=
erency.<br>
<br>
To debug, I added the following debug statements to set_tx_freq and set_rx_=
freq in uhd/host/lib/usrp/multi_usrp.cpp:<br>
<br>
=C2=A0 =C2=A0 tune_result_t set_tx_freq(const tune_request_t &amp;tune_requ=
est, size_t chan){<br>
#if 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 try {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time_spec_t now=C2=A0 =3D _tree-&=
gt;access&lt;time_spec_t&gt;(mb_root(0) / &quot;time/now&quot;).get();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time_spec_t when =3D _tree-&gt;ac=
cess&lt;time_spec_t&gt;(mb_root(0) / &quot;time/cmd&quot;).get();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_LOGGER_WARNING(&quot;MULTI_US=
RP&quot;) &lt;&lt; boost::format(&quot;Tune TX at %d:%f for %d:%f&quot;) % =
now.get_full_secs() % now.get_frac_secs() % when.get_full_secs() % when.get=
_frac_secs();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } catch(...) {}<br>
#endif<br>
<br>
and for RX:<br>
<br>
#if 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 try<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time_spec_t now=C2=A0 =3D _tree-&=
gt;access&lt;time_spec_t&gt;(mb_root(0) / &quot;time/now&quot;).get();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time_spec_t when =3D _tree-&gt;ac=
cess&lt;time_spec_t&gt;(mb_root(0) / &quot;time/cmd&quot;).get();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_LOGGER_WARNING(&quot;MULTI_US=
RP&quot;) &lt;&lt; boost::format(&quot;Tune RX at %d:%f for %d:%f&quot;) % =
now.get_full_secs() % now.get_frac_secs() % when.get_full_secs() % when.get=
_frac_secs();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } catch(...){}<br>
#endif<br>
<br>
I use the following python code to send the timed commands from within gnur=
adio:<br>
<br>
=C2=A0 tune_req_rx =3D uhd.tune_request()<br>
=C2=A0 tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE<br>
=C2=A0 tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL<br>
=C2=A0 tune_req_rx.dsp_freq =3D -dsp_freq<br>
<br>
=C2=A0 tune_req_tx =3D uhd.tune_request()<br>
=C2=A0 tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE<br>
=C2=A0 tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL<br>
=C2=A0 tune_req_tx.dsp_freq =3D dsp_freq<br>
<br>
=C2=A0 exec_time =3D usrp_sink.get_time_now() + uhd.time_spec(1)<br>
=C2=A0 usrp_sink.set_command_time(exec_time)<br>
=C2=A0 usrp_source.set_command_time(exec_time)<br>
<br>
=C2=A0 res1 =3D usrp_source.set_center_freq(tune_req_rx, 1)<br>
=C2=A0 res2 =3D usrp_sink.set_center_freq(tune_req_tx)<br>
<br>
=C2=A0 usrp_sink.clear_command_time()<br>
=C2=A0 usrp_source.clear_command_time()<br>
<br>
As can be seen, I request the commands to be executed 1s from now. I only h=
ave one MBoard but two channels (X310+2xUBX160).<br>
<br>
Now when I execute this code I can see:<br>
<br>
[WARNING] [MULTI_USRP] Tune RX at 16:0.423319 for 16:0.423318<br>
[WARNING] [MULTI_USRP] Tune TX at 16:0.423493 for 16:0.423318<br>
<br>
It can be seen that the command time (while being the same for RX+TX) is NO=
T in the future as compared to the current time. If this is true then it&#3=
9;s no surprise I don&#39;t see phase coherence (=3Dconstant phase offset f=
or one dsp_freq).<br>
<br>
<br>
HOW ON EARTH can that be?<br>
<br>
<br>
Lukas<br>
<br>
<br>
PS: I tried adding larger time offsets but no change<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br></div>

--00000000000001825d05a0ae3ded--


--===============5444472462669073347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5444472462669073347==--


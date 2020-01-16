Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFAF13D302
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jan 2020 05:06:17 +0100 (CET)
Received: from [::1] (port=52636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irwQ8-0000Q4-Tx; Wed, 15 Jan 2020 23:06:12 -0500
Received: from mail-vs1-f52.google.com ([209.85.217.52]:35510)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <amritnagi32@gmail.com>)
 id 1irwQ5-0000Hd-Du
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 23:06:09 -0500
Received: by mail-vs1-f52.google.com with SMTP id x123so11876782vsc.2
 for <usrp-users@lists.ettus.com>; Wed, 15 Jan 2020 20:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=7y5FvvV0lthhJ/sr8sUuChNi6EwnEv/eDFu9abwc7wI=;
 b=W+eb8kU0uqB+hOwA3zOjCenMU6Dd7Kttg/DQ10Z++r98XVoEnZEJ8wK5hwnghyhy/j
 uTQXFh3Fwi6fKgML+gqO2xBesDoY45UJjSx5ColCt2YNB1+biOPHlUZf3LqJRRaaCjtJ
 N0qXOLuHJfarh+AbBJPXwG1TJZ/9SBwHm9+n8f7FTBSDerKHJCegFhbv3qe49gXCz2mz
 H5MVGaVZAUpnOeNflcayFRtCYeCWhlDq2HqkZuYTJE5hfaitxzltbT8YfriqauOb8st0
 BOm2FYpxm439zLWBiFpftARDWy6Ga6Kvsus4/NEsY/UG9wJ1z9Dq4JKo6P6f1Id8o5p8
 AxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=7y5FvvV0lthhJ/sr8sUuChNi6EwnEv/eDFu9abwc7wI=;
 b=N/kGT9gZuNe8Bx3BFht6T/gFEXxaDXHqlvWasCg8pGgmrBgxbaX4InWuXMHRztql6x
 4bQ8+6Y3vNmIRW5TvkwqIk5Q2TstSbQnbOpqbIGLkqWxCCewjSp9Jt9a1XVvWBW3G+BL
 KJsp0sTwqK6petlC+OoInoUfoJ3q0ed1rmd0iIah5+8bKuj4L++oH/f3936OljIp8BFf
 MrIpawBSD0ik4lN5vVilsijoKLtIPUtxVuFi0D0ScFnHqk/m3eekzrZVmzSvgxCYoDQX
 LlpzqknlZkxyQHvU6k91/ulQ1q8yhvIFoWGZpKqwi1bJmTXf7JFHi4QCXwyDasma8UQS
 W7Ig==
X-Gm-Message-State: APjAAAWw73PYdSnx2W5uyc8aJQ797hFrQBf1Xpz6Nbx+NjH4O7fBPli8
 DPZG/HYbuKEzB1jaazUmp32jrlEBg7y82d64hwod1A==
X-Google-Smtp-Source: APXvYqzMyIZsTAPkcqv/tZoySKgipObuKmmZ4sHogM5byKpxDrMyMEYA7+thN1HBuG1LhlkyhN02VUqWdcGzP1wHlMI=
X-Received: by 2002:a67:2701:: with SMTP id n1mr301775vsn.103.1579147528541;
 Wed, 15 Jan 2020 20:05:28 -0800 (PST)
MIME-Version: 1.0
References: <CAA3PG_naMDLB52GhfcSwcr0CsU4aOooc+oQS70Lqvb+yjks7Pw@mail.gmail.com>
 <5E1CB4A9.2030907@gmail.com>
In-Reply-To: <5E1CB4A9.2030907@gmail.com>
Date: Thu, 16 Jan 2020 09:34:50 +0530
Message-ID: <CAA3PG_=TJqXY2B22ADB7TBvp69gkU_tU0kg7km6MXXAYJqQQZA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Benchmarking set_tx_freq and set_rx_freq on X310,
 B210 and N200
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
From: Amrit Pal Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Amrit Pal Singh <amritnagi32@gmail.com>
Content-Type: multipart/mixed; boundary="===============0189578892078184048=="
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

--===============0189578892078184048==
Content-Type: multipart/alternative; boundary="0000000000007c98ea059c39efab"

--0000000000007c98ea059c39efab
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thanks for the inputs. I'll look into these.

Thanks,
Amrit

On Mon, Jan 13, 2020 at 11:50 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 01/13/2020 05:26 AM, Amrit Pal Singh via USRP-users wrote:
>
> Hi All,
>
> I am benchmarking the following commands on X310, B210 and N200 on
> UHD-3.14 version:
>
>    1. usrp->set_tx_freq(tune_req, 0);
>    2. usrp->set_rx_freq(tune_req, 0);
>
> I am changing the frequencies inside a for loop for 1000 and 5000 times.
> The code snippet is as follows:
>     int count = 5000;
>     uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);
>     double start = usrp->get_time_now().get_real_secs();
>     for(int a = 0; a < count; a++){
>         uhd::tune_request_t tune_req = uhd::tune_request_t(800e6 + (a *
> 1e6), 0);
>         tune_req.dsp_freq_policy = uhd::tune_request_t::POLICY_NONE;
>         tune_req.rf_freq_policy = uhd::tune_request_t::POLICY_AUTO;
>         //usrp->set_tx_freq(tune_req, 0);
>         usrp->set_rx_freq(tune_req, 0);
>     }
>     std::cout << "time:" << ((usrp->get_time_now().get_real_secs() -
> start)/count) * 1000 << "(ms)" << std::endl;
>
> The following table summarizes the result observed with average time for a
> single frequency hops and the hop rate as well for both Tx and Rx.
>
> X310 test
>
>
>
> No of hops Tx time (average) ms Tx Hops/second Rx time (average) ms Rx
> Hops/second
> 1000 0.0453756 22038.27608 0.0441415 22654.41818
> 5000 0.051013 19602.84633 0.0457056 21879.15704
>
>
>
>
>
> B210 test
>
>
>
> No of hops Tx time (average) ms Tx Hops/second Rx time (average) ms Rx
> Hops/second
> 1000 3.34055 299.3519031 5.13762 194.6426555
> 5000 3.35529 298.0368314 4.94233 202.3337171
>
>
>
>
>
> N200 test
>
>
>
> No of hops Tx time (average) ms Tx Hops/second Rx time (average) ms Rx
> Hops/second
> 1000 0.0530515 18849.6084 0.0504478 19822.46996
> 5000 0.0391015 25574.46645 0.037663 26551.2572
> As observed, the rate is really slow for B210. I also tested using another
> B210 and it gave similar results.
> Could anyone share any insights into these values.
>
> Thanks,
> Amrit
>
>
> Also, see here:
>
>
> https://wiki.analog.com/resources/tools-software/linux-drivers/iio-transceiver/ad9361?s#fastlock_mode
>
> The UHD drivers don't implement "fast lock mode", but if you only have 8
> frequencies to manage, you could do some coding
>   and make it work.  But the fact is that for many/most F-H scenarios, you
> need more than that.  Which requires a lot of
>   tricky stuff, using those 8 "fast lock" slots as a cache, and doing
> cache management.  It may not end up being that much
>   faster.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007c98ea059c39efab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks=C2=A0for the inputs. =
I&#39;ll look into these.</div><div><br></div><div>Thanks,</div><div>Amrit<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Jan 13, 2020 at 11:50 PM Marcus D. Leech via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 01/13/2020 05:26 AM, Amrit Pal Singh
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi All,
        <div><br>
        </div>
        <div>I am benchmarking the following=C2=A0commands on X310, B210 an=
d
          N200 on UHD-3.14 version:</div>
        <div>
          <ol>
            <li>usrp-&gt;set_tx_freq(tune_req, 0);</li>
            <li>usrp-&gt;set_rx_freq(tune_req, 0);</li>
          </ol>
          <div>I am changing the frequencies=C2=A0inside a for loop for 100=
0
            and 5000 times.</div>
          <div>The code snippet=C2=A0is as follows:</div>
          <div>=C2=A0 =C2=A0 int count =3D 5000;</div>
          <div>=C2=A0 =C2=A0 uhd::usrp::multi_usrp::sptr usrp =3D
            uhd::usrp::multi_usrp::make(args);<br>
            =C2=A0 =C2=A0 double start =3D usrp-&gt;get_time_now().get_real=
_secs();<br>
            =C2=A0 =C2=A0 for(int a =3D 0; a &lt; count; a++){<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::tune_request_t tune_req =3D
            uhd::tune_request_t(800e6 + (a *<br>
            1e6), 0);<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_req.dsp_freq_policy =3D
            uhd::tune_request_t::POLICY_NONE;<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_req.rf_freq_policy =3D
            uhd::tune_request_t::POLICY_AUTO;<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 //usrp-&gt;set_tx_freq(tune_req, 0)=
;<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp-&gt;set_rx_freq(tune_req, 0);<=
br>
            =C2=A0 =C2=A0 }<br>
            =C2=A0 =C2=A0 std::cout &lt;&lt; &quot;time:&quot; &lt;&lt;
            ((usrp-&gt;get_time_now().get_real_secs() - start)/count) *
            1000 &lt;&lt; &quot;(ms)&quot; &lt;&lt; std::endl;<br>
          </div>
          <div><br>
          </div>
          <div>The following=C2=A0table summarizes the result observed with
            average time for a single frequency hops and the hop rate as
            well for both Tx and Rx.</div>
        </div>
        <div><br>
        </div>
        <div>
          <table dir=3D"ltr" style=3D"table-layout:fixed;font-size:10pt;fon=
t-family:Arial;width:0px;border-collapse:collapse;border:none" border=3D"1"=
 cellpadding=3D"0" cellspacing=3D"0">
            <colgroup><col width=3D"100"><col width=3D"100"><col width=3D"1=
00"><col width=3D"100"><col width=3D"100"></colgroup><tbody>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(0,0,0) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:2px 3px;vertical-align:bottom;font-weight:bold;text-align:center">X310
                  test</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-ali=
gn:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-ali=
gn:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-ali=
gn:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-ali=
gn:bottom"><br>
                </td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">No of hops</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">Tx time (average) ms</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">Tx Hops/second</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">Rx time (average) ms</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">Rx Hops/second</td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:h=
idden;padding:2px 3px;vertical-align:bottom;text-align:right">1000</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">0.0453756</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">22038.27608</td=
>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">0.0441415</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(204,204,204) rgb(204,204,204);overflow:h=
idden;padding:2px 3px;vertical-align:bottom;text-align:right">22654.41818</=
td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;text-align:right">5000</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">0.051013</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">19602.84633</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">0.0457056</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;text-align:right">21879.15704</td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;font-weight:bold;text-align:center">B=
210
                  test</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">No of hops</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">Tx time (average) ms</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">Tx Hops/second</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">Rx time (average) ms</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">Rx Hops/second</td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:h=
idden;padding:2px 3px;vertical-align:bottom;text-align:right">1000</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">3.34055</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">299.3519031</td=
>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">5.13762</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(204,204,204) rgb(204,204,204);overflow:h=
idden;padding:2px 3px;vertical-align:bottom;text-align:right">194.6426555</=
td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;text-align:right">5000</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">3.35529</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">298.0368314</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">4.94233</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;text-align:right">202.3337171</td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;font-weight:bold;text-align:center">N=
200
                  test</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom"><br>
                </td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">No of hops</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">Tx time (average) ms</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">Tx Hops/second</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">Rx time (average) ms</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom">Rx Hops/second</td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:h=
idden;padding:2px 3px;vertical-align:bottom;text-align:right">1000</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">0.0530515</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">18849.6084</td>
                <td style=3D"overflow:hidden;padding:2px 3px;vertical-align=
:bottom;text-align:right;border:1px solid rgb(204,204,204)">0.0504478</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(204,204,204) rgb(204,204,204);overflow:h=
idden;padding:2px 3px;vertical-align:bottom;text-align:right">19822.46996</=
td>
              </tr>
              <tr style=3D"height:21px">
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;text-align:right">5000</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">0.0391015</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">25574.46645</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px=
 3px;vertical-align:bottom;text-align:right">0.037663</td>
                <td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:2px 3px;vertical-align:bottom;text-align:right">26551.2572</td>
              </tr>
            </tbody>
          </table>
          <br>
        </div>
        <div>As observed, the rate is really slow for B210. I also
          tested using another B210 and it gave similar results.=C2=A0</div=
>
        <div>Could anyone share any insights into these values.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Amrit</div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    Also, see here:<br>
    <br>
<a href=3D"https://wiki.analog.com/resources/tools-software/linux-drivers/i=
io-transceiver/ad9361?s#fastlock_mode" target=3D"_blank">https://wiki.analo=
g.com/resources/tools-software/linux-drivers/iio-transceiver/ad9361?s#fastl=
ock_mode</a><br>
    <br>
    The UHD drivers don&#39;t implement &quot;fast lock mode&quot;, but if =
you only
    have 8 frequencies to manage, you could do some coding<br>
    =C2=A0 and make it work.=C2=A0 But the fact is that for many/most F-H
    scenarios, you need more than that.=C2=A0 Which requires a lot of<br>
    =C2=A0 tricky stuff, using those 8 &quot;fast lock&quot; slots as a cac=
he, and
    doing cache management.=C2=A0 It may not end up being that much<br>
    =C2=A0 faster.<br>
    <br>
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

--0000000000007c98ea059c39efab--


--===============0189578892078184048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0189578892078184048==--


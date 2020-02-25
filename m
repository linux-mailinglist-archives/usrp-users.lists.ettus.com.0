Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8719716ED8D
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 19:11:27 +0100 (CET)
Received: from [::1] (port=35628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6eg0-0005S9-3W; Tue, 25 Feb 2020 13:11:24 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:44063)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j6efw-0005JL-3O
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 13:11:20 -0500
Received: by mail-ot1-f47.google.com with SMTP id h9so358676otj.11
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 10:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D8sZT/HoKuWzIZJ29urAXekYPk7UcxdG/K8zXOHuWb8=;
 b=VdKRtb8MitfMMuLeiHg+D6BNDmAvlByjFslDOnr5klCrDHIIBp/5Qp3ceW0D3GtHsk
 wyTM445px4Q5ExtVTwMCS8962fGclCv9UH1+9/GKpjuYtZFNMYn2/HMmTCv5Sa72ixFw
 3r2m6fYCl/xU8/fg33nsA9o8QujllOoGjWwvKPF+XadsgDdm6R8VhBoT67vMK5TMDHZ1
 AKCGHydSCyaoSPt5unsyIonLyOStw6kjlS4+19aUlybrzw/G98qVzIfvxOf5pTHtN31N
 q3q24WTfiA1xAJj/fkCp4HaQU9priCdSgHWdmh87WwCdUqdMDABylwfVBSz8/q/28fPI
 306g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D8sZT/HoKuWzIZJ29urAXekYPk7UcxdG/K8zXOHuWb8=;
 b=C81Q3bD8kS70Eztgxntv96xIGDdminNMSEL4j+DnmrdAzdkAqurDSxHxPNcnJfWIcB
 ud0fv8KmG90NVqKseTTbXXSTH6LWH0yg5q2oB2lhB59cGLjy4tLpPE5rawj5VN0dcQh3
 SoOfTtM8sTwIf2CJd6kOhlASjWwnEUxhGX2RaDzt2wo6WWf9VbiJ5k4IyRD32Bs5UeDK
 4oTnAmUqc7psrw/sX1NtdKmOseqBY7U9c0j+VzrXDVuPTIdhM9/y1d2tXXFV0ZvyiVYD
 NdysZR7S1FwDAHMSN9o2QAUuzxgR0BTDBRE7FBI24JejIOUsfT9svPGzvZhAXoEuBjmr
 /XXA==
X-Gm-Message-State: APjAAAVGXDRPD0HaPvo4NG0DDNlKYOmnTteGNaBB0QcwP1aMYAPi1tu/
 GxqWDlKNU6MDKdHXyipT0ysUD1h0tH5uJuus8As1Na08
X-Google-Smtp-Source: APXvYqxAS487IZ2mOwzXWj9lsn8S109ytvIA0/SklB/vv+oPcMwTsBqcHmtEaBPcxtFavkMKLvjBT2fRP47o+UH4InE=
X-Received: by 2002:a05:6830:1014:: with SMTP id
 a20mr31467909otp.302.1582654239358; 
 Tue, 25 Feb 2020 10:10:39 -0800 (PST)
MIME-Version: 1.0
References: <c8cd447d-acde-1201-1dbb-1562017c2153@itsystems.it>
In-Reply-To: <c8cd447d-acde-1201-1dbb-1562017c2153@itsystems.it>
Date: Tue, 25 Feb 2020 13:10:28 -0500
Message-ID: <CAB__hTT_kmPjRq90GAfwpQir6TX_jpDF7o3O6xO8TG=w4DP5rQ@mail.gmail.com>
To: Paolo Palana <p.palana@itsystems.it>
Subject: Re: [USRP-users] linuhd 3.14.1.1 Problem in setting rx frequecy on
 n310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4556393291511599090=="
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

--===============4556393291511599090==
Content-Type: multipart/alternative; boundary="000000000000bd7680059f6a6712"

--000000000000bd7680059f6a6712
Content-Type: text/plain; charset="UTF-8"

Hi Paolo,
The "A" daughterboard (for A:0 and A:1) only has one Rx LO (and one Tx LO)
such that both channels will always share the same LO.  The "B"
daughterboard is the same.  Thus you do not have independent RF control of
all four channels on the N310.  Does that make sense?
Rob

On Tue, Feb 25, 2020 at 8:44 AM Paolo Palana via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello to all the mailing list.
>
> I've a little problem in setting the rx frequency on my n310 when I need
> to acquire from all 4 channels.
>
> I use the n310 directly in my program using libuhd. The code I use in
> order to set the rx_frequency is:
>
>     First of all set the subdevs:
>
>          if(vm.count("subdev")){
>                 mUsrp->set_rx_subdev_spec(mSubDev);
>         }
>
>         ............
>
>          for(size_t i=0; i<mFreqs.size(); i++)
>         {
>             cout << boost::format("Setting chan %d Freq: %f MHx") % (i)
> % (mFreqs[i]/1e6) << endl;
>             uhd::tune_request_t tune_request(mFreqs[i]);
>             tune_request.args = uhd::device_addr_t("mode_n=integer");
>             mUsrp->set_rx_freq(tune_request, i);
>             cout << boost::format("New RX Freq chan %d: %f MHz...") % i
> % (mUsrp->get_rx_freq(i)/1e6) << endl << endl;
>         }
>
>
> The output I can see on my console confirm that every channel should
> have the rigth frequency.
>
> Of course this is not the case.
>
>
> Suppose I wont acquire from A:0 RX2 (if I use TX/RX is the same) and A:1
> RX2  tuning the first device at 654.0 MHZ
>
> and the second to 896.8 MHZ. What happen is that both channels are tuned
> to the last frequency (I'm sure of it because I tested it with a signal
> generator).
>
> I'm unable to understand why this happen. Any help is apreciated.
>
> Thank you
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bd7680059f6a6712
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paolo,<div>The &quot;A&quot; daughterboard (for A:0 and=
 A:1) only has one Rx LO (and one Tx LO) such that both channels will alway=
s share the same LO.=C2=A0 The &quot;B&quot; daughterboard is the same.=C2=
=A0 Thus you do not have independent RF control of all four channels on the=
 N310.=C2=A0 Does that make sense?</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 25, 2020=
 at 8:44 AM Paolo Palana via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hello to all the mailing list.<br>
<br>
I&#39;ve a little problem in setting the rx frequency on my n310 when I nee=
d<br>
to acquire from all 4 channels.<br>
<br>
I use the n310 directly in my program using libuhd. The code I use in<br>
order to set the rx_frequency is:<br>
<br>
=C2=A0=C2=A0=C2=A0 First of all set the subdevs:<br>
<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 if(vm.count(&quot;subdev&quot;)=
){<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 mUsrp-&gt;set_rx_subdev_spec(mSubDev);<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>
<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ............<br>
<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 for(size_t i=3D0; i&lt;mFreqs.s=
ize(); i++)<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 {<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 cout &lt;&lt; boost::fo=
rmat(&quot;Setting chan %d Freq: %f MHx&quot;) % (i)<br>
% (mFreqs[i]/1e6) &lt;&lt; endl;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uhd::tune_req=
uest_t tune_request(mFreqs[i]);<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_request.=
args =3D uhd::device_addr_t(&quot;mode_n=3Dinteger&quot;);<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 mUsrp-&gt;set_rx_freq(t=
une_request, i);<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 cout &lt;&lt;=
 boost::format(&quot;New RX Freq chan %d: %f MHz...&quot;) % i<br>
% (mUsrp-&gt;get_rx_freq(i)/1e6) &lt;&lt; endl &lt;&lt; endl;<br>
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>
<br>
<br>
The output I can see on my console confirm that every channel should<br>
have the rigth frequency.<br>
<br>
Of course this is not the case.<br>
<br>
<br>
Suppose I wont acquire from A:0 RX2 (if I use TX/RX is the same) and A:1<br=
>
RX2=C2=A0 tuning the first device at 654.0 MHZ<br>
<br>
and the second to 896.8 MHZ. What happen is that both channels are tuned<br=
>
to the last frequency (I&#39;m sure of it because I tested it with a signal=
<br>
generator).<br>
<br>
I&#39;m unable to understand why this happen. Any help is apreciated.<br>
<br>
Thank you<br>
<br>
<br>
<br>
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
</blockquote></div>

--000000000000bd7680059f6a6712--


--===============4556393291511599090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4556393291511599090==--


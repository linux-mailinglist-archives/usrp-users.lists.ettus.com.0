Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F751B3188
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 23:04:16 +0200 (CEST)
Received: from [::1] (port=41606 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jR03v-0004Zh-Th; Tue, 21 Apr 2020 17:04:11 -0400
Received: from mail-qv1-f52.google.com ([209.85.219.52]:39052)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jR03s-0004TX-6l
 for usrp-users@lists.ettus.com; Tue, 21 Apr 2020 17:04:08 -0400
Received: by mail-qv1-f52.google.com with SMTP id v38so7315893qvf.6
 for <usrp-users@lists.ettus.com>; Tue, 21 Apr 2020 14:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=cLmaRq2kzrCCNG2WYfd+dqNo2dE0c+3cesgkLX3LxSk=;
 b=B/C3nTbbZx3lMOIehM3d9wiUE66Y/Wk9LMkuOb/JsnwT+aKsvgL82x81bYCBlzhVON
 4TDh744y+qkkFPVhOqlMNBuF+l6B3D/Hlak9PoZ7hhbZQAe3j6VmDavCPO8fbN6N8FTZ
 HocGhsnl06FS41G6bqb1h85Eay6F4O+t1ClkaUaJxiTRYl9/Zr27+ATh+mYOZA7ZsCqz
 kB6d/4btoFosBnLM+rm/3788ujgTzqmdzlq6MmtQpcyQ2BNd1Q2krlS/DLkJvKhcTpjv
 LvsBhmfXyyZ+/ZAzmms0IDJfytdkDqT1mWjYOHYGwevUn/h31Cb+dg9co3D3HggFYzMa
 1Nww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=cLmaRq2kzrCCNG2WYfd+dqNo2dE0c+3cesgkLX3LxSk=;
 b=lBhk5GPjIOqAm7dvWwZdQU1/NiPq6jaX6uKAksbZwJlL1mk9+8PkY8l/m23nsaESM9
 nzuKUbe56Qlwveqf6yTGe1vfjttUcJLDhKiXY7KHL9dDcNQQSd1lyVB1rO6H80iKzP2R
 ZZJPT+OmsX4I1wiwrhr6v4ZIRKJJfLErWV1yuDJmsFLyDB/ydphrgicrgOmUN4/OiQaR
 fwR5m8VZCu7d918ItpWl1EiIP4dikVAvcTRIWFxGMXVsoOTiGBD98ypAsuhsbMCLKIeh
 hIQcDOqlJ8jKg0dwcdXY8kfw83uf0wUu8aHKOLIJY0T9oG5Zn6TBn+miUsUCOwM7/9u5
 lrAw==
X-Gm-Message-State: AGi0PuYmse54bPb8w/68nKs95VmJGt8SstVRpm2+I2EOFlaC5eBg7bv4
 gyYqUNGhbpcGgbqsx2po0jWXv3MIJ8Y=
X-Google-Smtp-Source: APiQypLEoWZi5rX8oIHR8Cp1/lOatApRdw3JBb5agW6L3mP1wJXYqhXZpOAeGTBEAdhFlLDpzFbYQA==
X-Received: by 2002:a05:6214:42b:: with SMTP id
 a11mr15517595qvy.186.1587503007537; 
 Tue, 21 Apr 2020 14:03:27 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id h63sm2478390qkd.49.2020.04.21.14.03.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 14:03:27 -0700 (PDT)
Message-ID: <5E9F5F9E.6050109@gmail.com>
Date: Tue, 21 Apr 2020 17:03:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>, Lukas Haase <lukashaase@gmx.at>
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
 <5E9E4751.1090606@gmail.com>
 <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
 <CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com>
In-Reply-To: <CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com>
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8550580438661327258=="
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

This is a multi-part message in MIME format.
--===============8550580438661327258==
Content-Type: multipart/alternative;
 boundary="------------030504060109060300040702"

This is a multi-part message in MIME format.
--------------030504060109060300040702
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/21/2020 09:28 AM, Rob Kossler wrote:
> I don't quite understand why it is important if it is "analog" 
> bandwidth.  While I understand that the UBX cannot change its analog 
> bandwidth, it seems to me that digital bandwidth that is inherent in 
> downconversion from 200 MS/s to 5MS/s is still going reduce the noise 
> power by the ratio of the original bandwidth (160 MHz) to the new 
> bandwidth (say, 4.5 MHz).
> Rob
Lukas was varying the "Bandwidth" setting in the UHD USRP source block, 
which is used to control the analog bandwidth for RX
   cards that support it.  The UBX series does not.

So, no amount of changing that parameter (for a fixed sample rate) is 
going to produce any change in detected power level.  The
   same can NOT be said when changing the sample rate delivered to the host.


>
> On Tue, Apr 21, 2020 at 12:24 AM Lukas Haase via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Marcus,
>
>     > Von: "Marcus D. Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     > [...]
>     > > My question is if my approach/understanding is right.
>     > >
>     > > In particular I do not understand Question 4 (why does noise
>     not reduce if I reduce bandwidth).
>     > If you're varying *analog* bandwidth, rather than sampling rate, be
>     > aware that UBX doesn't have variable analog bandwidth. It's
>     always fixed.
>
>     I see.
>     Great point.
>
>     I just found:
>     http://ettus.80997.x6.nabble.com/USRP-users-Which-bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.html
>
>     And it seems set_tx_bandwidth() and set_rx_bandwidth() do nothing
>     then on the UBX.
>
>     I wrote before my noise level should be -174+NF+10*log10(5e6).
>
>     But based on this, it should be more correctly
>     -174+NF+10*log10(160e6) ... is that correct? (I just receive the
>     raw samples from the USRP via USRP Source. There is no other
>     digital filter?)
>
>     > > Furthermore, I'd be interested if Question 5 is conceptually
>     correct.
>     > Conceptually, I don't see any problem with it, but it very-squarely
>     > enters  "consider a spherical cow" territory.  You CANNOT use a
>     purely
>     >    arithmetic analysis, due to uncertainties.   I would, in fact,
>     > encourage you to acquire a decent broad-band, calibrated, noise
>     source for
>     >    you lab so that you can do Y-factor analysis, if for no other
>     reason
>     > than to satisfy yourself that the noise equations work.
>
>     The issue with the bandwidth calculation above would be one of
>     them ;-)
>
>     > I've used these on a budget-sensitive project just last year:
>     > https://g8fek.com/precision-noise-sources.html
>
>     Thanks for the pointer. I think I'll get one of these.
>
>     For a proper use I would need a steep filter though, correct? (in
>     order to have a well defined total input power
>     Pin=-174+ENR+10*log10(FilterCuroff) dBm? )
>
>     Thanks,
>     Lukas
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------030504060109060300040702
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/21/2020 09:28 AM, Rob Kossler
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I don't quite understand why it is important if it is
          "analog" bandwidth.  While I understand that the UBX cannot
          change its analog bandwidth, it seems to me that digital
          bandwidth that is inherent in downconversion from 200 MS/s to
          5MS/s is still going reduce the noise power by the ratio of
          the original bandwidth (160 MHz) to the new bandwidth (say,
          4.5 MHz). </div>
        <div>Rob</div>
      </div>
    </blockquote>
    Lukas was varying the "Bandwidth" setting in the UHD USRP source
    block, which is used to control the analog bandwidth for RX<br>
      cards that support it.  The UBX series does not.<br>
    <br>
    So, no amount of changing that parameter (for a fixed sample rate)
    is going to produce any change in detected power level.  The<br>
      same can NOT be said when changing the sample rate delivered to
    the host.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue, Apr 21, 2020 at
            12:24 AM Lukas Haase via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Hi Marcus,<br>
            <br>
            &gt; Von: "Marcus D. Leech" &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;<br>
            &gt; [...]<br>
            &gt; &gt; My question is if my approach/understanding is
            right.<br>
            &gt; &gt;<br>
            &gt; &gt; In particular I do not understand Question 4 (why
            does noise not reduce if I reduce bandwidth).<br>
            &gt; If you're varying *analog* bandwidth, rather than
            sampling rate, be<br>
            &gt; aware that UBX doesn't have variable analog bandwidth. 
            It's always fixed.<br>
            <br>
            I see.<br>
            Great point.<br>
            <br>
            I just found: <a moz-do-not-send="true"
href="http://ettus.80997.x6.nabble.com/USRP-users-Which-bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.html"
              rel="noreferrer" target="_blank">http://ettus.80997.x6.nabble.com/USRP-users-Which-bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.html</a><br>
            <br>
            And it seems set_tx_bandwidth() and set_rx_bandwidth() do
            nothing then on the UBX.<br>
            <br>
            I wrote before my noise level should be
            -174+NF+10*log10(5e6).<br>
            <br>
            But based on this, it should be more correctly
            -174+NF+10*log10(160e6) ... is that correct? (I just receive
            the raw samples from the USRP via USRP Source. There is no
            other digital filter?)<br>
            <br>
            &gt; &gt; Furthermore, I'd be interested if Question 5 is
            conceptually correct.<br>
            &gt; Conceptually, I don't see any problem with it, but it
            very-squarely<br>
            &gt; enters  "consider a spherical cow" territory.  You
            CANNOT use a purely<br>
            &gt;    arithmetic analysis, due to uncertainties.   I
            would, in fact,<br>
            &gt; encourage you to acquire a decent broad-band,
            calibrated, noise source for<br>
            &gt;    you lab so that you can do Y-factor analysis, if for
            no other reason<br>
            &gt; than to satisfy yourself that the noise equations work.<br>
            <br>
            The issue with the bandwidth calculation above would be one
            of them ;-)<br>
            <br>
            &gt; I've used these on a budget-sensitive project just last
            year:<br>
            &gt; <a moz-do-not-send="true"
              href="https://g8fek.com/precision-noise-sources.html"
              rel="noreferrer" target="_blank">https://g8fek.com/precision-noise-sources.html</a><br>
            <br>
            Thanks for the pointer. I think I'll get one of these.<br>
            <br>
            For a proper use I would need a steep filter though,
            correct? (in order to have a well defined total input power
            Pin=-174+ENR+10*log10(FilterCuroff) dBm? )<br>
            <br>
            Thanks,<br>
            Lukas<br>
            <br>
            <br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030504060109060300040702--


--===============8550580438661327258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8550580438661327258==--


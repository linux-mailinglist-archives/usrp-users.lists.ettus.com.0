Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3204E368D6
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 02:44:18 +0200 (CEST)
Received: from [::1] (port=37968 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYgVp-0008Uw-RS; Wed, 05 Jun 2019 20:44:13 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:34714)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dario.fertonani@gmail.com>)
 id 1hYgVm-0008Pc-2K
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 20:44:10 -0400
Received: by mail-oi1-f174.google.com with SMTP id u64so410149oib.1
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 17:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=chFYL10Wu65ul+KptcQm7rgtgDe9EOendjZ7b19WnD8=;
 b=sXl7ASdDy+L5t1zrcJMj5Sc03OAmohGslTeE9fIw4STHxK/kCnx/+G+FfvE7Q7Ajrc
 DuLByXEaZHxgZrML8CuQjZR3I+G9xXPzjbtBnZUA7JcotjKfS85SyME8Cr9CrOQgdAgr
 CahDoOQJ5bog8xKTTjgvOGZ2QgyCm0ujFy72m4ISHChMCxLgI3GVFHcOFabZHdRGu3aa
 2ssqSG34436dykdBjNvFrE0w9iuWrcm31o/4ZTSOYaHNm9YYrZZufa4+aaz85yQo/Hy3
 ScoWpIHVq5XOI1GD5Le7D60mzT6hQImQO7ue5J1gLciwar1C9uC3hzs5/OuyuyV+dNMk
 Zhnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=chFYL10Wu65ul+KptcQm7rgtgDe9EOendjZ7b19WnD8=;
 b=maU+jtuiMSQHF9+40GkX/+Jx9rZOMYu2qwGOilFXN1YAFxm5JRNDvkeoR6DreHN3iL
 JnNI/4rL+TLfG3qdZbOMsA4BAqOy3FKRfhV14b8PRhD7z2o9Xs4EeoB5qBBdszL5dkqc
 UPuBZCVIcdzH0Tg6zg30daam/yymU8eOK+V5RvkUb7y8e9sv8XI9oTEDrj5p5mlOcX/6
 rGsGY/I8eKGc52NarS1UgPKjM2//TonwEKssf32Y0BDgQt5Okr9xSPLhJLnMF6L689S2
 yLgeXb+5KPy8yo795NZaZvm5BdXDEPqgzxQPrmycC0mY1+sHB5/bYD4MF68PBrCJwGfB
 hzVg==
X-Gm-Message-State: APjAAAXpuXIzQqVsH6eTIV6eGPf9zlEANZhpPZw6ZOu3PhzFmnfgZvaE
 /YTDVTBNiUf6tU0mM3euLR7MzEF+mgZg1c0Phac=
X-Google-Smtp-Source: APXvYqyKAJRouPYjhH1bR8fi8QlOIGkHFYAXKqS54kB83DNJRz843eK3h7lzT1HNpxSXC2ciCKYBLbHOzN+Sr/PKfag=
X-Received: by 2002:aca:4f0c:: with SMTP id d12mr6838031oib.35.1559781809177; 
 Wed, 05 Jun 2019 17:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
 <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
 <5CF84EF6.1030906@gmail.com>
 <CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com>
 <26d52e06-f204-6bbd-bead-b7782c09ae83@comcast.net>
In-Reply-To: <26d52e06-f204-6bbd-bead-b7782c09ae83@comcast.net>
Date: Wed, 5 Jun 2019 17:43:15 -0700
Message-ID: <CAJGEdAirvX+iSHZ7BwGSHAiHtW+EgqnLPjLvyok8Q5njQwr=rA@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Subject: Re: [USRP-users] Use of dsp_freq in uhd::tune_request_t
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
From: Dario Fertonani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Fertonani <dario.fertonani@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7835760939764952444=="
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

--===============7835760939764952444==
Content-Type: multipart/alternative; boundary="000000000000a9c73e058a9d00cb"

--000000000000a9c73e058a9d00cb
Content-Type: text/plain; charset="UTF-8"

Thank you Ron, you are right: results look better at lower bandwidths. I'll
try experimenting more.

On Wed, Jun 5, 2019 at 4:53 PM Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I wonder if the 2X master clock rate may be an issue. I use offset tuning
> all the time on my B210, but at smaller sample rates and offsets (10 Msps,
> 4 MHz offset and 4X master clock rate).
>
> Maybe a test with 10 MHz LTE versus 20 MHz would be useful?
>
> Ron
> On 6/5/19 16:34, Dario Fertonani via USRP-users wrote:
>
> Sorry, I wrote "coherent" meaning that the problems show up only with
> signal analyses that go beyond power spectrum.
> For example, the output LTE signal gives CQI=15 (max quality) with
> dsp_freq=0 and variable CQI (never 15) with dsp_freq = 11.52e6 (in all
> cases sampling rate is set to 23.04e6 and master clock rate is twice the
> sampling rate). I do know that LTE is robust to DC offset but this is a
> more general question on UHD/B210.
>
> On Wed, Jun 5, 2019 at 4:23 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 06/05/2019 07:12 PM, Dario Fertonani wrote:
>>
>> Thank you Marcus. I should have mentioned that I tried removing that
>> line, with no success. With non-zero dsp_freq, the power spectrum looks OK
>> but the (coherent) signal quality is terrible.
>>
>> OK, that's a different level of problem.
>>
>> You're trying to maintain coherence across more than one B210?
>>
>>
>>
>> On Wed, Jun 5, 2019 at 2:25 PM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
>>>
>>> I'm trying to move the "DC offset" out of the main spectrum by using the
>>> dsp_freq field in uhd::tune_request_t. This doesn't seem to work on
>>> B210, meaning that the following code functions properly with DcOffset_Hz=0
>>> but not, for example, with DcOffset_Hz=10e6. In all these tests the master
>>> clock rate is large enough to fit DcOffset_Hz and the spectrum of interest
>>> easily. Anything obviously wrong?
>>>
>>> Thanks,
>>> Dario
>>>
>>> uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz , const
>>> double &DcOffset_Hz )
>>> {
>>>     uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
>>>     tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>>>     tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>>>     tuneRequest.dsp_freq = DcOffset_Hz;
>>>     return tuneRequest;
>>> }
>>>
>>>
>>> You shouldn't need to use POLICY_MANUAL at all, since the tune_request_t
>>> supports offset-tuning directly:
>>>
>>> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a9c73e058a9d00cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Ron, you are right: results look better at lower=
 bandwidths. I&#39;ll try experimenting more.</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 4:53 PM=
 Ron Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>I wonder if the 2X master clock rate may be an issue. I use
      offset tuning all the time on my B210, but at smaller sample rates
      and offsets (10 Msps, 4 MHz offset and 4X master clock rate).</p>
    <p>Maybe a test with 10 MHz LTE versus 20 MHz would be useful?</p>
    <p>Ron<br>
    </p>
    <div class=3D"gmail-m_3158782402836561207moz-cite-prefix">On 6/5/19 16:=
34, Dario Fertonani via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Sorry, I wrote &quot;coherent&quot; meaning that the=
 problems
        show up only with signal analyses that go beyond power spectrum.
        <div>For example, the output LTE signal gives CQI=3D15 (max
          quality) with dsp_freq=3D0 and variable CQI (never 15) with
          dsp_freq =3D 11.52e6 (in all cases sampling rate is set to
          23.04e6 and master clock rate is twice the sampling rate). I
          do know that LTE is robust to DC offset but this is a more
          general question on UHD/B210.</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 4:23 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div class=3D"gmail-m_3158782402836561207gmail-m_-1921377858939=
781567moz-cite-prefix">On
              06/05/2019 07:12 PM, Dario Fertonani wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Thank you Marcus. I should have mentioned that I
                  tried removing that line, with no success. With
                  non-zero dsp_freq, the power spectrum looks OK but the
                  (coherent) signal quality is terrible.</div>
              </div>
            </blockquote>
            OK, that&#39;s a different level of problem.<br>
            <br>
            You&#39;re trying to maintain coherence across more than one
            B210?<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr"><br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019
                    at 2:25 PM Marcus D. Leech via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div bgcolor=3D"#FFFFFF">
                      <div class=3D"gmail-m_3158782402836561207gmail-m_-192=
1377858939781567gmail-m_8104242665193802923moz-cite-prefix">On
                        06/05/2019 05:20 PM, Dario Fertonani via
                        USRP-users wrote:<br>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">
                          <div><font face=3D"arial, sans-serif">I&#39;m try=
ing
                              to move the &quot;DC offset&quot; out of the =
main
                              spectrum by using the dsp_freq field in=C2=A0=
</font>uhd::tune_request_t.
                            This doesn&#39;t seem to work on B210, meaning
                            that the following code functions properly
                            with=C2=A0DcOffset_Hz=3D0 but not, for example,
                            with=C2=A0DcOffset_Hz=3D10e6. In all these test=
s
                            the master clock rate is large enough to fit
                            DcOffset_Hz and the spectrum of interest
                            easily. Anything obviously wrong?</div>
                          <div><br>
                          </div>
                          <div>Thanks,</div>
                          <div>Dario</div>
                          <font face=3D"courier new, monospace">
                            <div><font face=3D"courier new, monospace"><br>
                              </font></div>
                            uhd::tune_request_t uhdTuneRequest( const
                            double &amp;CarrierFreq_Hz , const double
                            &amp;</font><span>DcOffset_Hz</span><font face=
=3D"courier new, monospace">=C2=A0)<br>
                            {<br>
                            =C2=A0 =C2=A0 uhd::tune_request_t tuneRequest(
                            CarrierFreq_Hz -=C2=A0</font><span>DcOffset_Hz<=
/span><font face=3D"courier new, monospace">=C2=A0);<br>
                            =C2=A0 =C2=A0 tuneRequest.args =3D uhd::device_=
addr_t(
                            &quot;mode_n=3Dinteger&quot; );<br>
                            =C2=A0 =C2=A0 tuneRequest.dsp_freq_policy =3D
                            uhd::tune_request_t::POLICY_MANUAL;<br>
                            =C2=A0 =C2=A0 tuneRequest.dsp_freq =3D DcOffset=
_Hz;<br>
                            =C2=A0 =C2=A0 return tuneRequest;<br>
                            }</font><br>
                        </div>
                        <br>
                        <br>
                      </blockquote>
                      You shouldn&#39;t need to use POLICY_MANUAL at all,
                      since the tune_request_t supports offset-tuning
                      directly:<br>
                      <br>
                      <a class=3D"gmail-m_3158782402836561207gmail-m_-19213=
77858939781567gmail-m_8104242665193802923moz-txt-link-freetext" href=3D"htt=
ps://files.ettus.com/manual/structuhd_1_1tune__request__t.html" target=3D"_=
blank">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a=
><br>
                      <br>
                      <br>
                      <br>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list<br>
                    <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D=
"_blank">USRP-users@lists.ettus.com</a><br>
                    <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  </blockquote>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"gmail-m_3158782402836561207mimeAttachmentHeader"><=
/fieldset>
      <pre class=3D"gmail-m_3158782402836561207moz-quote-pre">_____________=
__________________________________
USRP-users mailing list
<a class=3D"gmail-m_3158782402836561207moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a>
<a class=3D"gmail-m_3158782402836561207moz-txt-link-freetext" href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a9c73e058a9d00cb--


--===============7835760939764952444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7835760939764952444==--


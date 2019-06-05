Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D73682B
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 01:35:48 +0200 (CEST)
Received: from [::1] (port=53820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYfRY-0005Mz-9V; Wed, 05 Jun 2019 19:35:44 -0400
Received: from mail-it1-f178.google.com ([209.85.166.178]:54834)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dario.fertonani@gmail.com>)
 id 1hYfRU-0005FK-4c
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 19:35:40 -0400
Received: by mail-it1-f178.google.com with SMTP id h20so304757itk.4
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 16:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=p8FAiJx+YjJulqiaOwJzZXomFgrTJPCKhGpIAp11Hw8=;
 b=hpLTw4vTVww/VZbIe5UD7dfGts1FT9I9s9p2e/5G6ZWpEf4wASzftC2qVHVSYcTAkw
 y0v6nGFbb0oMcuqPhkX92a8Sgm8f/0u1TwaLZDP4Rg7vEas3KMWcxgOp4mI9mz3vtQv4
 gOYhGU/7LHIvg3OmxeBwx6gJi59fghIl7IZGK9Jj1xjWTz4vNCFWZesPXTxSOCkl/MOP
 DL1arQQPPuznaDp8A+RUKgk8JfQT2HCIxhJ87W4FSm8zpadvRblrA8gUUynUnK51CKtP
 KV3B2nQzYa6J9Hg/OL0tVT4uAlPIMfNe3+2/NpPLm1bfCG35WR6PVSF9ZRg+csgrw2bi
 6SOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=p8FAiJx+YjJulqiaOwJzZXomFgrTJPCKhGpIAp11Hw8=;
 b=mzKP6ns8KmCO8y9stvHpNEtzyzwtZUOEDi+mMUuosmjOuiGYKFQElTyANvtdFhxzxL
 5Tl49Io/Q7Y7EpJxwwOxBc/Z/4i0kj4wtGUVpPZLmM8PiAPRHFKRVeDEPywIN0P6syIP
 7UjcfWKlfbi1O+EgQFZw6tQ0D/Fel2WZggf/WZiazwnrBJKKTIHpuGeB3p5NwOZqfcyL
 +6S1RiCisKtszkv6gcpEj9vfxt32IQNNx7Qh9lC6NVFqw2Y1BpWb7WgFeXlj5jxU8nTT
 ZSKvj+IYk+7ce2GPMpFj4gW9TFwsu33nN36+3e7K4bnWAFPhFhNP2YCah7SjzKl4c4qo
 MDQA==
X-Gm-Message-State: APjAAAXRWggcWdZtnQE2JNGEcKIamgG6jNKR3h2C8v+lhrzKgOY7oBOf
 SEQWYdmcM8CLrueHyS7bu9UA2Rx/F25wF7iCjEj9AA==
X-Google-Smtp-Source: APXvYqypuiR5knSH9/qO6HSSxuYOX0DimlLfOAm1v7WKa69Pz68m6QHlhVsRWN3emV1VzXcfP/luSx7sswD99bqH4hY=
X-Received: by 2002:a24:3285:: with SMTP id j127mr14926329ita.25.1559777699013; 
 Wed, 05 Jun 2019 16:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
 <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
 <5CF84EF6.1030906@gmail.com>
In-Reply-To: <5CF84EF6.1030906@gmail.com>
Date: Wed, 5 Jun 2019 16:34:47 -0700
Message-ID: <CAJGEdAiiJO9QiruA2ADMJBZihqO+5uW-Y0nUi5HBjCKPBYxCoA@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============7488712167746093337=="
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

--===============7488712167746093337==
Content-Type: multipart/alternative; boundary="000000000000adaaf6058a9c0b3f"

--000000000000adaaf6058a9c0b3f
Content-Type: text/plain; charset="UTF-8"

Sorry, I wrote "coherent" meaning that the problems show up only with
signal analyses that go beyond power spectrum.
For example, the output LTE signal gives CQI=15 (max quality) with
dsp_freq=0 and variable CQI (never 15) with dsp_freq = 11.52e6 (in all
cases sampling rate is set to 23.04e6 and master clock rate is twice the
sampling rate). I do know that LTE is robust to DC offset but this is a
more general question on UHD/B210.

On Wed, Jun 5, 2019 at 4:23 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/05/2019 07:12 PM, Dario Fertonani wrote:
>
> Thank you Marcus. I should have mentioned that I tried removing that line,
> with no success. With non-zero dsp_freq, the power spectrum looks OK but
> the (coherent) signal quality is terrible.
>
> OK, that's a different level of problem.
>
> You're trying to maintain coherence across more than one B210?
>
>
>
> On Wed, Jun 5, 2019 at 2:25 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
>>
>> I'm trying to move the "DC offset" out of the main spectrum by using the
>> dsp_freq field in uhd::tune_request_t. This doesn't seem to work on
>> B210, meaning that the following code functions properly with DcOffset_Hz=0
>> but not, for example, with DcOffset_Hz=10e6. In all these tests the master
>> clock rate is large enough to fit DcOffset_Hz and the spectrum of interest
>> easily. Anything obviously wrong?
>>
>> Thanks,
>> Dario
>>
>> uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz , const
>> double &DcOffset_Hz )
>> {
>>     uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
>>     tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>>     tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>>     tuneRequest.dsp_freq = DcOffset_Hz;
>>     return tuneRequest;
>> }
>>
>>
>> You shouldn't need to use POLICY_MANUAL at all, since the tune_request_t
>> supports offset-tuning directly:
>>
>> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>

--000000000000adaaf6058a9c0b3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I wrote &quot;coherent&quot; meaning that the probl=
ems show up only with signal analyses that go beyond power spectrum.<div>Fo=
r example, the output LTE signal gives CQI=3D15 (max quality) with dsp_freq=
=3D0 and variable CQI (never 15) with dsp_freq =3D 11.52e6 (in all cases sa=
mpling rate is set to 23.04e6 and master clock rate is twice the sampling r=
ate). I do know that LTE is robust to DC offset but this is a more general =
question on UHD/B210.</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 4:23 PM Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-1921377858939781567moz-cite-prefix">On 06/05/201=
9 07:12 PM, Dario Fertonani
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Thank you Marcus. I should have mentioned that I tried
          removing that line, with no success. With non-zero dsp_freq,
          the power spectrum looks OK but the (coherent) signal quality
          is terrible.</div>
      </div>
    </blockquote>
    OK, that&#39;s a different level of problem.<br>
    <br>
    You&#39;re trying to maintain coherence across more than one B210?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 2:25
            PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <div class=3D"gmail-m_-1921377858939781567gmail-m_81042426651=
93802923moz-cite-prefix">On
                06/05/2019 05:20 PM, Dario Fertonani via USRP-users
                wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div><font face=3D"arial, sans-serif">I&#39;m trying to m=
ove
                      the &quot;DC offset&quot; out of the main spectrum by=
 using
                      the dsp_freq field in=C2=A0</font>uhd::tune_request_t=
.
                    This doesn&#39;t seem to work on B210, meaning that the
                    following code functions properly with=C2=A0DcOffset_Hz=
=3D0
                    but not, for example, with=C2=A0DcOffset_Hz=3D10e6. In =
all
                    these tests the master clock rate is large enough to
                    fit DcOffset_Hz and the spectrum of interest easily.
                    Anything obviously wrong?</div>
                  <div><br>
                  </div>
                  <div>Thanks,</div>
                  <div>Dario</div>
                  <font face=3D"courier new, monospace">
                    <div><font face=3D"courier new, monospace"><br>
                      </font></div>
                    uhd::tune_request_t uhdTuneRequest( const double
                    &amp;CarrierFreq_Hz , const double &amp;</font><span>Dc=
Offset_Hz</span><font face=3D"courier new, monospace">=C2=A0)<br>
                    {<br>
                    =C2=A0 =C2=A0 uhd::tune_request_t tuneRequest( CarrierF=
req_Hz
                    -=C2=A0</font><span>DcOffset_Hz</span><font face=3D"cou=
rier new, monospace">=C2=A0);<br>
                    =C2=A0 =C2=A0 tuneRequest.args =3D uhd::device_addr_t(
                    &quot;mode_n=3Dinteger&quot; );<br>
                    =C2=A0 =C2=A0 tuneRequest.dsp_freq_policy =3D
                    uhd::tune_request_t::POLICY_MANUAL;<br>
                    =C2=A0 =C2=A0 tuneRequest.dsp_freq =3D DcOffset_Hz;<br>
                    =C2=A0 =C2=A0 return tuneRequest;<br>
                    }</font><br>
                </div>
                <br>
                <br>
              </blockquote>
              You shouldn&#39;t need to use POLICY_MANUAL at all, since the
              tune_request_t supports offset-tuning directly:<br>
              <br>
              <a class=3D"gmail-m_-1921377858939781567gmail-m_8104242665193=
802923moz-txt-link-freetext" href=3D"https://files.ettus.com/manual/structu=
hd_1_1tune__request__t.html" target=3D"_blank">https://files.ettus.com/manu=
al/structuhd_1_1tune__request__t.html</a><br>
              <br>
              <br>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a><br>
            <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000adaaf6058a9c0b3f--


--===============7488712167746093337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7488712167746093337==--


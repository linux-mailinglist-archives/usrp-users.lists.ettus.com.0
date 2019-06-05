Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B68C367B4
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 01:13:38 +0200 (CEST)
Received: from [::1] (port=47308 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYf65-0003ze-H1; Wed, 05 Jun 2019 19:13:33 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:37753)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dario.fertonani@gmail.com>)
 id 1hYf62-0003uF-GD
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 19:13:30 -0400
Received: by mail-oi1-f171.google.com with SMTP id t76so276637oih.4
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 16:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hhae5P+gQoARUrnWzldPvuBrgNdNhbKZPzhZ90KS+Ck=;
 b=PwiUH2T98nzknoVAxcWeZ9mdSEB1woDtZFN+BHi2WJadKCAYhuyaUwnc4MYpCOCRSi
 ZkI0NG4UCLwdgVUYhyVnCKKU2ZijI2bHaBkg0+7DvjPYGeJOkim6f4ABIWUgPnX7O/j6
 WiGfleAkMq2+6iHWOY+xN1BGSCFOEdFxaqu6MrC+fZu3prSemBlEG5IA7JFI7x87oprl
 DcrbbhRSMo7cwVDTh15dWp50FTyH7KYgBRmLcNZMCXR3OY1H7SCrSPsouS+vie5WV4/I
 q+XfNOT+VWoTtKtwoDt3hGUrKMjZcmUYmcyBYLc8yLrducuN1okcjxL1VPY+RxYP7xOW
 FeKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hhae5P+gQoARUrnWzldPvuBrgNdNhbKZPzhZ90KS+Ck=;
 b=FI/KsH/xs3i6JTUNIaa0nwQBoRrnYfd5Tc+wDDXBdTSG1T2TYvY2IWuG4JuYRL9PqE
 8lSKVEsJEMAQfB7Fwr/BOxCo1t6NCg7p9VrmyyFoPJPTlZ+mq/ykh/r4FRFO3zhYXnsL
 H+P5IIM78dZaZT/diSzf+UU7XH6GZ9pxK0/ySWsLGZAlE0XbECxPEmx4uU65pHeUJYhr
 4/jkNVfnaTccbwsm2IdruBjQyx4UNxCCYZawU3jb5AjC/d200iX0oVRUYi4ckg19fVEO
 iywNwqBNvxRLJZricCK/Vv7brR4bCl9BIfNtfgl9ZOSq4z06k0mXr8HtKQ8OjTAg54MM
 ySKA==
X-Gm-Message-State: APjAAAU1qOcylJB0N1BkJtKAME5QBRaCLBvNcw2YnOoXBRxqvhJPufXa
 VuwMK6M/YRYPyXzrNUH9ndV0XuPWNlnsLDUF1JQ=
X-Google-Smtp-Source: APXvYqy/2oA7UiNMukrsHGKo1cRDZkahvTXhDw2Qa4Ur7Bc7i0vwbjcDAMWAknLk3jgQ/Ch4pmuykGgKUrGBQY5ZBaQ=
X-Received: by 2002:aca:518f:: with SMTP id f137mr4914190oib.123.1559776369791; 
 Wed, 05 Jun 2019 16:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
 <5CF8330D.3050309@gmail.com>
In-Reply-To: <5CF8330D.3050309@gmail.com>
Date: Wed, 5 Jun 2019 16:12:38 -0700
Message-ID: <CAJGEdAgMnNpnE6Q=J3j3Qke3x+AytyPiJ-xQ_9rx-pVFhbQ42Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8801194642749338931=="
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

--===============8801194642749338931==
Content-Type: multipart/alternative; boundary="000000000000735a8f058a9bbc46"

--000000000000735a8f058a9bbc46
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus. I should have mentioned that I tried removing that line,
with no success. With non-zero dsp_freq, the power spectrum looks OK but
the (coherent) signal quality is terrible.

On Wed, Jun 5, 2019 at 2:25 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/05/2019 05:20 PM, Dario Fertonani via USRP-users wrote:
>
> I'm trying to move the "DC offset" out of the main spectrum by using the
> dsp_freq field in uhd::tune_request_t. This doesn't seem to work on B210,
> meaning that the following code functions properly with DcOffset_Hz=0 but
> not, for example, with DcOffset_Hz=10e6. In all these tests the master
> clock rate is large enough to fit DcOffset_Hz and the spectrum of interest
> easily. Anything obviously wrong?
>
> Thanks,
> Dario
>
> uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz , const
> double &DcOffset_Hz )
> {
>     uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
>     tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
>     tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>     tuneRequest.dsp_freq = DcOffset_Hz;
>     return tuneRequest;
> }
>
>
> You shouldn't need to use POLICY_MANUAL at all, since the tune_request_t
> supports offset-tuning directly:
>
> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000735a8f058a9bbc46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Marcus. I should have mentioned that I trie=
d removing that line, with no success. With non-zero dsp_freq, the power sp=
ectrum looks OK but the (coherent) signal quality is terrible.</div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5=
, 2019 at 2:25 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_8104242665193802923moz-cite-prefix">On 06/05/2019=
 05:20 PM, Dario Fertonani
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><font face=3D"arial, sans-serif">I&#39;m trying to move the &q=
uot;DC
            offset&quot; out of the main spectrum by using the dsp_freq fie=
ld
            in=C2=A0</font>uhd::tune_request_t. This doesn&#39;t seem to wo=
rk on
          B210, meaning that the following code functions properly
          with=C2=A0DcOffset_Hz=3D0 but not, for example,
          with=C2=A0DcOffset_Hz=3D10e6. In all these tests the master clock
          rate is large enough to fit DcOffset_Hz and the spectrum of
          interest easily. Anything obviously wrong?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Dario</div>
        <font face=3D"courier new, monospace">
          <div><font face=3D"courier new, monospace"><br>
            </font></div>
          uhd::tune_request_t uhdTuneRequest( const double
          &amp;CarrierFreq_Hz , const double &amp;</font><span style=3D"fon=
t-family:&quot;courier new&quot;,monospace">DcOffset_Hz</span><font face=3D=
"courier new, monospace">=C2=A0)<br>
          {<br>
          =C2=A0 =C2=A0 uhd::tune_request_t tuneRequest( CarrierFreq_Hz -=
=C2=A0</font><span style=3D"font-family:&quot;courier new&quot;,monospace">=
DcOffset_Hz</span><font face=3D"courier new, monospace">=C2=A0);<br>
          =C2=A0 =C2=A0 tuneRequest.args =3D uhd::device_addr_t( &quot;mode=
_n=3Dinteger&quot; );<br>
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
    <a class=3D"gmail-m_8104242665193802923moz-txt-link-freetext" href=3D"h=
ttps://files.ettus.com/manual/structuhd_1_1tune__request__t.html" target=3D=
"_blank">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html<=
/a><br>
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
</blockquote></div></div>

--000000000000735a8f058a9bbc46--


--===============8801194642749338931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8801194642749338931==--


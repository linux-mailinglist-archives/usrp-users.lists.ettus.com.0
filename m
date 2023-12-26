Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9E181E84E
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 17:14:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90F7B384866
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 11:14:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703607258; bh=fIv2Ob/0E6fLgjfGr+N5xTQbI75g0l2jd/jgLcA+XSU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Iuvc3Kpe8s3WiEvFO9aUyFhupu6Q8zK6i0tWKcYY0tZsJUPz1WIzKuM+REp+QjYWV
	 ArTDcjC2773pBZKEdxwsiV282Gs4X+at6PoZdaO6FAHey7PdlYvA19+wlf6Yo8Ccga
	 MrXDc/Pmwnxt3d4CaqI0tvuzxm2efoybE4gaUSF1ENYmAHecnMq9ACTVDPESRjtFUG
	 XPJNPVrMJMBm0BcHTtQ7/UYD11z80mWQ+kwLIYpDfzOAQH4OmuBJioR7KxBuJCt70K
	 mwmndiX6oR/AhoFXziW7jJit0Si37w2QNNiutCz1Jv/qG/rvKOu4BedPYrEEzhthEY
	 ARAohLwsvGkYQ==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 123AC381506
	for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 11:13:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KVaeqF/c";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7810827e54eso452520385a.2
        for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 08:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703607230; x=1704212030; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXpv5Q52EH/MKaSZnpNlGBVkiuhVOV4VDapgascmLYQ=;
        b=KVaeqF/cVmmWaildxmE0BORD5WXLUHcJJA93PTOOtTH28C+S5GQltdI1z+2YSxVlzd
         LVWTU9HszH2Tcth7ITDn1QmtQbrLpUF4PK76NTObnyITYvykApcmRFsaLTLzidllWNah
         tbjHvPJRI/DczurWfedWA/WuKF1PstHHdflarULL4D7sxZdGUHEt89De97yt0k2j8z2u
         avmProtfolOysoSlL7kyjhnBzcsEHAMGd7jq+A4Q9OdiimGk5sSbvu7F0FlWhpsB5ZQH
         CcU8Xi8/15Om1RkJyRRqytnOelENrH/zJIXnvVzfQGH32/rztjqNMQ+MxuHjkqcqtROk
         J83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703607230; x=1704212030;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kXpv5Q52EH/MKaSZnpNlGBVkiuhVOV4VDapgascmLYQ=;
        b=F2MHubOZFjFgGYSXY166fNEPlpJirMey14w8jl01EskWlYaUubIk81Vfm5nJQge4Nw
         yzBXaQc9NzfugFYiOEBk3d7M/G5Cm7eja1ihwPTMiGQM1pF7GPjKbCoBWKsPV6FjoPho
         bJ6PwILsvDOwnY3bG7/CwNT5TRMV7Bj/cRIlOrdSOcMNtCWRmXV63EJSJoQ/6W+H8wfW
         POqgiMZt2Qai1NOu6XQlS28/3Ac0urcm5OKySSmtEBg/iRuJRiyKNa2BhLKwA2nG+vUl
         CQM4p26K0nQgX3MC97Y8FMQg7tpYN0oJdRIzmIzXZ4GTnbKLgSj95LqCrfibXYO1BavG
         KsIQ==
X-Gm-Message-State: AOJu0YwpMtTqEzNZLXidpHxf1ddeo4YazAAh1YNPbjcksZr7Z/en6DFk
	YH+yfn2f1+Xk+dQTbLKuWhWYhnvNWuI=
X-Google-Smtp-Source: AGHT+IEL3fDe2n6IedqW4QgBLGpFOu/Vv3nNrrkdqeMOj+d+jXFg308vB0decu7X077a62epkYuE9w==
X-Received: by 2002:a05:622a:148e:b0:427:a101:533c with SMTP id t14-20020a05622a148e00b00427a101533cmr11375840qtx.58.1703607229929;
        Tue, 26 Dec 2023 08:13:49 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id fh4-20020a05622a588400b00427dcdebe17sm1317209qtb.2.2023.12.26.08.13.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Dec 2023 08:13:49 -0800 (PST)
Message-ID: <6f64b040-17c9-465c-bb59-b413078b0063@gmail.com>
Date: Tue, 26 Dec 2023 11:13:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEtk-vVSDd-Z1dCHnkK7waNz_sZA+H0kw1=KfUZma3v+tt0o_g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEtk-vVSDd-Z1dCHnkK7waNz_sZA+H0kw1=KfUZma3v+tt0o_g@mail.gmail.com>
Message-ID-Hash: QNLFSZQCIXYNEJUM47YNNIJUMDYGH3CV
X-Message-ID-Hash: QNLFSZQCIXYNEJUM47YNNIJUMDYGH3CV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strange interference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QNLFSZQCIXYNEJUM47YNNIJUMDYGH3CV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0416203550741831958=="

This is a multi-part message in MIME format.
--===============0416203550741831958==
Content-Type: multipart/alternative;
 boundary="------------QRp0FMpIc4A0NZvMf1fAUCta"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QRp0FMpIc4A0NZvMf1fAUCta
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/12/2023 06:43, Francisco Gallardo l=C3=B3pez wrote:
> Hi all,
>
> I am seeing=C2=A0a quite strange pattern in an USRP B210, and I am tryi=
ng=20
> to figure out what it is.
>
> Right now this is more like an academic investigation, as this is not=20
> causing malfunctions, but it got my attention.
>
> So, from time to time I am seeing a tone (20dB above noise)=20
> appearing=C2=A0just in the middle of the band, to be precise=C2=A0=C2=B1=
2KHz around=20
> the central frequency that I configured in the USRP.
>
> I was not paying attention at all, until I noticed that it appears=20
> every day seven times a day, and always (more or less) at the same=20
> times. Hence, this is not random.
>
> Gut feeling is that this is caused by some sort of signal induced into=20
> the cables or locally radiated interference, not intended, of course.
>
> I was trying to further=C2=A0investigate, and for that I was trying to =
get=20
> a detail=C2=A0blocks=C2=A0diagram of the B210, as I saw the following=20
> information in the B210 website: "If you, however, happen to have a=20
> very strong interferer within half the master clock rate of your RX LO=20
> frequency, you might want to reduce this analog bandwidth. You can do=20
> so by calling uhd::usrp::multi_usrp::set_rx_bandwidth(bw)."=20
> B200/B210/B200mini/B205mini - Ettus Knowledge Base=20
> <https://kb.ettus.com/B200/B210/B200mini/B205mini#FAQ>
>
> Now the thing is, I realized I don't really know what the internal=20
> settings of the USRP are, also in terms of the Analog Devices AD9363.=20
> I know that the=C2=A0clock rate is 32 MHz, but from there I don't clear=
ly=20
> know what is the LO frequency that the USRP set.
>
> Also, I would like to know the setting that the USRP is using for the=20
> Analog bandwidth.
>
> In short, I would like to:
>
> a) Get a diagram like this one, but for the detailed case of B210. Is=20
> there something like this? (File:2920 simplified system diagram.gif -=20
> Ettus Knowledge Base=20
> <https://kb.ettus.com/File:2920_simplified_system_diagram.gif>)
> b) Know what is the LO freq that the USRP is setting (I assumed based=20
> on the 32MHz clock rate)
> c) Know where I can get the information on the setting the USRP is=20
> putting for the analog bandwidth filter.
>
> Thanks!
> Fran
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Francisco:

There's the schematics here:

https://files.ettus.com/schematics/b200/

Nearly all SDRs use direct-conversion, which means the LO is the same as=20
the desired RF frequency.=C2=A0 The B2xx series works like this.

Bandwidth can be set with a set_rx_bandwidth call, formally described her=
e:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a4e02=
6819f286e69c48c2e1956d95c6fb

Normally, UHD (the driver) will set the analog bandwidth to something=20
"appropriate" given your sample rate.

If you change to a slightly different frequency, does this occasional=20
RFI stay at the same frequency?

If you lower the RF gain, does it go away?


--------------QRp0FMpIc4A0NZvMf1fAUCta
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/12/2023 06:43, Francisco Gallard=
o
      l=C3=B3pez wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEtk-vVSDd-Z1dCHnkK7waNz_sZA+H0kw1=3DKfUZma3v+tt0o_g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">Hi all,
                        <div><br>
                        </div>
                        <div>I am seeing=C2=A0a quite strange pattern in =
an
                          USRP B210, and I am trying to figure out what
                          it is.=C2=A0</div>
                        <div><br>
                        </div>
                        <div>Right now this is more like an academic
                          investigation, as this is not causing
                          malfunctions, but it got my attention.</div>
                        <div><br>
                        </div>
                        <div>So, from time to time I am seeing a tone
                          (20dB above noise) appearing=C2=A0just in the
                          middle of the band, to be precise=C2=A0=C2=B12K=
Hz around
                          the central frequency that I configured in the
                          USRP.=C2=A0</div>
                        <div><br>
                        </div>
                        <div>I was not paying attention at all, until I
                          noticed that it appears every day seven times
                          a day, and always (more or less) at the same
                          times. Hence, this is not random.</div>
                        <div><br>
                        </div>
                        <div>Gut feeling is that this is caused by some
                          sort of signal induced into the cables or
                          locally radiated interference, not intended,
                          of course.</div>
                        <div><br>
                        </div>
                        <div>I was trying to further=C2=A0investigate, an=
d
                          for that I was trying to get a
                          detail=C2=A0blocks=C2=A0diagram of the B210, as=
 I saw
                          the following information in the B210 website:
                          "<span
style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&qu=
ot;Lucida Grande&quot;,sans-serif;font-size:14px">If
                            you, however, happen to have a very strong
                            interferer within half the master clock rate
                            of your RX LO frequency, you might want to
                            reduce this analog bandwidth. You can do so
                            by calling
                            uhd::usrp::multi_usrp::set_rx_bandwidth(bw).<=
/span>"=C2=A0<a
href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini#FAQ"
                            moz-do-not-send=3D"true">B200/B210/B200mini/B=
205mini
                            - Ettus Knowledge Base</a></div>
                        <div><br>
                        </div>
                        <div>Now the thing is, I realized I don't really
                          know what the internal settings of the USRP
                          are, also in terms of the Analog Devices
                          AD9363. I know that the=C2=A0clock rate is 32 M=
Hz,
                          but from there I don't clearly know what is
                          the LO frequency that the USRP set.=C2=A0<br>
                        </div>
                        <div><br>
                        </div>
                        <div>Also, I would like to know the setting that
                          the USRP is using for the Analog bandwidth.=C2=A0=
</div>
                        <div><br>
                        </div>
                        <div>In short, I would like to:</div>
                        <div><br>
                        </div>
                        <div>a) Get a diagram like this one, but for the
                          detailed case of B210. Is there something like
                          this? (<a
href=3D"https://kb.ettus.com/File:2920_simplified_system_diagram.gif"
                            moz-do-not-send=3D"true">File:2920 simplified
                            system diagram.gif - Ettus Knowledge Base</a>=
)</div>
                        <div>b) Know what is the LO freq that the USRP
                          is setting (I assumed based on the 32MHz clock
                          rate)</div>
                        <div>c) Know where I can get the information on
                          the setting the USRP is putting for the analog
                          bandwidth filter.</div>
                        <div><br>
                        </div>
                        <div>Thanks!</div>
                        <div>Fran=C2=A0</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Francisco:<br>
    <br>
    There's the schematics here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/sc=
hematics/b200/">https://files.ettus.com/schematics/b200/</a><br>
    <br>
    Nearly all SDRs use direct-conversion, which means the LO is the
    same as the desired RF frequency.=C2=A0 The B2xx series works like th=
is.<br>
    <br>
    Bandwidth can be set with a set_rx_bandwidth call, formally
    described here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1usrp_1_1multi__usrp.html#a4e026819f286e69c48c2e1956d95c6fb">=
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a4e02=
6819f286e69c48c2e1956d95c6fb</a><br>
    <br>
    Normally, UHD (the driver) will set the analog bandwidth to
    something "appropriate" given your sample rate.<br>
    <br>
    If you change to a slightly different frequency, does this
    occasional RFI stay at the same frequency?<br>
    <br>
    If you lower the RF gain, does it go away?<br>
    <br>
    <br>
  </body>
</html>

--------------QRp0FMpIc4A0NZvMf1fAUCta--

--===============0416203550741831958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0416203550741831958==--

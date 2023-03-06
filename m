Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CACB6AD282
	for <lists+usrp-users@lfdr.de>; Tue,  7 Mar 2023 00:07:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FAF6385244
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 18:07:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678144060; bh=N6abFuosSi6wDx+3ZcU9P0CE/WDMn21aM8OdIHVjMuI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nszbKQ///xEU0LDbDwDwIcTxzRNlJe0AOmE5BcgqoZ72sCdVzan8o5djN6v6ZeGY2
	 5Zka4eW2IbzdmS1FpUmbuFAf+XrW/G52TolegqH1Z1G4+vYGcszTIW0R8TlRBu9kWV
	 iFbZnbkFCATJfzlJCvkLovv2SuSMZD5fcL3hphs4gJSZl0l9FOU7uuKHb+DXo6vqqT
	 QkQPGbHV6ubvnYMulIgfqlKKIhqn6RYExS36quVr24rURMyFaLnPSalmnUwlgxeat0
	 yC+A7p/z7zqHRTvScMKoA3G6ohSzZwoNMBLLFZPm+U3fnM1ehblTREHCwi2uS5z8am
	 W+5HEdnUa7QrA==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7207F385111
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 18:07:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LNFD3UO+";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id r16so10951657qtx.9
        for <usrp-users@lists.ettus.com>; Mon, 06 Mar 2023 15:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678144022;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1O7+uV0bRqPczYKqE81x+pQtMtOMQrkXajCJu/qLME=;
        b=LNFD3UO+QaSYEKdUHtOS7DQy99xPyMKzVh0U6BjlrtBBDEaH2TH+X4p+sL59rzmE1i
         zjQyNY/xD/o15i8zZFri+JIxxIHEvY8p1E7s0gJv0p/SqTH6jbtNY2e+zKWzKjCvmWVZ
         tj8cd5LyVk92vfApRkuWLDT+mVsR1K8kp/tINKK1AreoKjq5Oh9UlEX02AUNHbIn74YS
         50l07I3WuYesdwxEelXaGglHCNseVA93l06wkBzyUKLhJdgCwb+r2ko8S6fMOtbZKoTk
         gea5YpzOGWKI9+Yq1tBiCyrF0Q3+40tYHARhmCcQ4pV+tFq0ryqQUTSpG2+P1UGE4fuq
         uGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678144022;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G1O7+uV0bRqPczYKqE81x+pQtMtOMQrkXajCJu/qLME=;
        b=XjE1KUtz1O0kNOvuZQR46b9QyF0YUxuFEeTvbEp/P8acZ6c3xlv25Q2rLuYwZ+XPfZ
         5hos3e+/jadLKyrMMuKQD5H42p3trekySmWfY22fAsswcxAB6I9s4hELr3pGRpciXZPL
         Yi8XHCCv2vBMJv950zC0LMAdMP6uGCc05u8Lx7dXLNeTKzFWicsuBO9JrWZH1MOGjMrq
         9OhGesoppoguMXHwbcJnGGNU2TdWILxUzXkNf0Yd6ni5d0g+67ElEzGAM/hf8c2GSp5e
         HCFen1e83kIGniHR8cO9m80k9fvIaZxszDdSmSmkmp/loAy+HVW03QKAD+KXrHZ0+4Uj
         zagA==
X-Gm-Message-State: AO0yUKUilHfweAeAwXL51u3+TzJ02kCitcBlWYc9wn7VFY1V+SXKyR57
	qAh/baF9PaYpa1SycSzHbaM=
X-Google-Smtp-Source: AK7set+c5lks02uzaQoXNwilqUipO2gxWTlt5WDVAo94AQ4FBiGM2ZLrAmXd/e58lCBXjCg3A4qe7w==
X-Received: by 2002:a05:622a:1443:b0:3bf:d9f3:debd with SMTP id v3-20020a05622a144300b003bfd9f3debdmr20153707qtx.6.1678144021691;
        Mon, 06 Mar 2023 15:07:01 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id m2-20020ac84442000000b003b86b088755sm8403247qtn.15.2023.03.06.15.07.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 15:07:01 -0800 (PST)
Message-ID: <bda192cb-74f8-da5f-536e-11c287681ea6@gmail.com>
Date: Mon, 6 Mar 2023 18:07:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Dor Ratz <dorratz12@gmail.com>, =?UTF-8?Q?Marcus_M=c3=bcller?=
 <marcus.mueller@ettus.com>, mmueller@gnuradio.org,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAPY8uVNRaqfjD=+a4wWfFPTAR5JiKfpkiGpru7aN48gVei=e-A@mail.gmail.com>
 <!&!AAAAAAAAAAAuAAAAAAAAADk5w6jZ0HRBqbYEaqPE+5YBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAAYa+0KIwYNRrN9iuP4xuCTAQAAAAA=@tlrnet.eu>
 <64195ea3-7f1c-4f73-32e0-dbcdee305b1b@gmail.com>
 <CAPY8uVODoepSuoMxL8zW9o=1ug3hBgtkFha4zaPfFv0P=W_qfw@mail.gmail.com>
 <dc19b613-52db-1929-bfe4-870ac06abe8a@ettus.com>
 <CAPY8uVNykOusBvhU3qOsfZc-Md0_TCB5gmEOnooLWiFCXEf1ag@mail.gmail.com>
 <CAPY8uVMysdDuovR15fnX4cKNiS5tMP47Z5yYf03h3Smn+HFWmg@mail.gmail.com>
 <bc4e7c60-5b80-8025-ede0-342180837eb8@gmail.com>
 <CAPY8uVPCyBvBcpdSHAUyJe1488kvx99f5bLBK731DYnrn+NoKw@mail.gmail.com>
 <cfd3a956-24af-f8f1-5a17-b7ca21b1f25a@gmail.com>
 <CAPY8uVN+QOkiZx=uCbmeJ1+K74FcjGT7aUeSY2-=WLGLj0NSaQ@mail.gmail.com>
 <dbe3f5ca-0a7e-9d41-bb9d-35dfeb72841a@gmail.com>
 <CAPY8uVMnbo=wQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAPY8uVMnbo=wQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gmail.com>
Message-ID-Hash: EYYXWS5JROLJ357STLI2ICBCGADIC6F2
X-Message-ID-Hash: EYYXWS5JROLJ357STLI2ICBCGADIC6F2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eduard Sivolenko <eduard.sivolenko@ni.com>, derek.mckay@utu.fi, claudio.franchini@tlrnet.eu
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Spurs in UBX-160 Daughterboard with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EYYXWS5JROLJ357STLI2ICBCGADIC6F2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3085981040133664260=="

This is a multi-part message in MIME format.
--===============3085981040133664260==
Content-Type: multipart/alternative;
 boundary="------------R0r9xZWVllIsAqCMzEx1dDBe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------R0r9xZWVllIsAqCMzEx1dDBe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/03/2023 17:13, Dor Ratz wrote:
> Hey,
>
> Thanks a lot.
>
> _Several questions after thinking about it:_
>
> 1. Do you mean R&D of Ettus or GNURadio? Can you address me to the=20
> relevant email address?
This thread really belongs on the usrp-users mailing list now, rather=20
than discuss-gnuradio, i have copied usrp-users, and
 =C2=A0 removed discuss-gnuradio.




>
> 2. Let me see if I get it right for USRP X310 with UBX-160:
>
>   * Motherboard clock =3D MCR=C2=A0 =3Dmaster_clock_rate=C2=A0 =3D main=
 clock rate =3D
>     default value is 200MHz. The 10MHz REFCLK is used to set it.
>   * Daughterboard Clock Rate in Hz =3D=C2=A0dboard_clock_rate =3D defau=
lt value
>     is 50MHz, need to change it to 20MHz for center frequencies=C2=A0un=
der
>     1GHz do decrease spurs.
>     This is actually the clock that the motherboard injects into the
>     daughterboard , i.e it is the reference=C2=A0clock of the MAX2871 P=
LL
>     which is on the daughterboard.
>   * According to this link
>     <http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.htm=
l>,
>     if I set=C2=A0"mode_n=3Dinteger","int_n_step=3D100e3", in Device Ad=
dress
>     parameter in USRP Sink block, then the frequency resolution on the
>     PLL is:
>     frequency resolution [Hz] =3D int_n_step [Hz] =3D dboard_clock_rate
>     [Hz] / (R divider=C2=A0 [-])
>
>     For example:
>     100e3 [Hz] =3D 50e6 [Hz] / 500
>
>     So ->*the frequency=C2=A0resolution of the PLL is set by the
>     "int_n_step" parameter* -> it calculates=C2=A0the R divider [-] in =
the
>     PLL relating to dboard_clock_rate and desired int_n__step.
>     I guess that the result must be in the range of allowed PLL's R
>     divider values from 1 to 1023.
>
> 3.=C2=A0 =C2=A0Do I must set the "int_n_step" parameter as follows?
>
> 4.=C2=A0 Does the frequency resolution range from 50MHz when R divider=3D=
=20
> 1[-] up to 0.05[MHz] when R divider =3D 1000[-] ?
>
> Referring to this sentence in max2871 PLL datasheet=20
> <https://www.analog.com/media/en/technical-documentation/data-sheets/ma=
x2871.pdf>:
> ""The minimum R counter divide ratio is 1, and the maximum divide=20
> ratio is 1023"
>
>
> 5. Where can I find the relevant source code? I've looked here=20
> <https://github.com/EttusResearch/uhd>=C2=A0but I'm not sure where the=20
> daughterboard code/relevant code is.
>
> Thanks
> Dor
>
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=
=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-19:10 =D7=9E=D7=90=D7=AA =E2=
=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F=20
> <=E2=80=AApatchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>     On 06/03/2023 08:54, Dor Ratz wrote:
>>     Hey Marcus,
>>
>>     Thanks a lot.
>>
>>     I'm=C2=A0using external 10 MHz reference clock (REFCLK) with 1e-12=
[Hz]
>>     frequency resolution -> it feeds my PLL in the UBX-160
>>     daughterboard in the X310 USRP.
>     The REFCLCK input to the X310 is used to control the
>     master-clock(s) on the motherboard, which, in turn produce clocks f=
or
>     =C2=A0 the daughtercards--but the daughtercards never see your exte=
rnal
>     clock directly.
>>
>>     So, *when defining "mode_n=3Dinteger"* in the Device Address
>>     parameter of the UHD: USRP Sink block in GNURadio to set PLL in
>>     integer-N mode, *what is exactly R-DIVIDER=3D reference divider of
>>     the PLL*?
>>
>>     I've looked in the PLL (max2871) datasheet:
>>     https://www.analog.com/media/en/technical-documentation/data-sheet=
s/max2871.pdf
>>
>>     According to it:
>>     "The minimum R counter divide ratio is 1, and the maximum divide
>>     ratio is 1023"
>>
>>     I understand that if for example, the R counter=3D(R-DIVIDER)=3D10=
00
>>     -> the frequency resolution is 10MHz/1000 =3D 0.01MHz=3D 10KHz, co=
rrect?
>>
>>     But I don't know what is the R-DIVIDER chosen=C2=A0in the PLL with=
 the
>>     settings in gnuradio.
>>
>>     Thanks,
>>
>>     Dor
>>
>     You'd have to go looking through the source code.=C2=A0 Unless some=
one
>     from R&D happens to know off the top of their heads.
>     =C2=A0 10 years ago, I kept all of this in my head--when there were=
 FAR
>     fewer products to keep track of and the codebase was
>     =C2=A0 more modest.
>
>
>>
>>
>>
>>
>>
>>
>>     =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=
=94=D7=B3, 2 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:55 =D7=9E=D7=90=D7=AA=
 =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F
>>     <=E2=80=AApatchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>
>>         On 02/03/2023 13:09, Dor Ratz wrote:
>>>         Hey,
>>>
>>>         Do you know how=C2=A0to assess the RF PLL resolution in integ=
er-N
>>>         mode?
>>>
>>>         I've looked in ANALOG max2871 PLL datasheet - not sure I
>>>         found the answer there.
>>>         https://www.analog.com/media/en/technical-documentation/data-=
sheets/max2871.pdf
>>>
>>>         The Ettus team is CC here too - it will be helpful to know
>>>         what you suggest.
>>>
>>>         Thanks,
>>>         Dor
>>         It will depend on the REFCLK that is being used by that board
>>         (I do not happen to know off the top of my head), and by
>>         =C2=A0 whatever flexibility in reference divider the PLL has.
>>
>>         In an Integer-N PLL (and you can spend quite a bit of time
>>         learning how PLL synthesizers work online), the "step size" is
>>         =C2=A0 dependent on the REFCLK, which itself may have a divide=
r on
>>         it.=C2=A0 So, let's say your REFCLK is 10MHz and there's a div=
ider
>>         =C2=A0 that can divide the reference clock by up to 10000, the=
n
>>         your minimum step size is 1kHz.=C2=A0=C2=A0 This is in tension=
 with the
>>         =C2=A0 fact that having a high ratio between the desired frequ=
ency
>>         and the reference frequency tends to create signal-quality
>>         issues,
>>         =C2=A0 like, as I recall, phase noise.=C2=A0 But I'd research =
the
>>         datasheet and the overall concept of PLL synthesis.
>>
>>         My recollection on the X310 is that the reference-clock
>>         frequency is 100MHz, but that's just a hazy memory.
>>
>>
>>
>>>
>>>
>>>         =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=
=9D =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=91-21:10 =D7=9E=D7=90=
=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F
>>>         <=E2=80=AApatchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>
>>>             On 01/03/2023 13:14, Dor Ratz wrote:
>>>>             Hey Marcus, How are you?
>>>>
>>>>             Not sure if you got my email.
>>>>
>>>>             Do you know anyway I can change transmitted frequency
>>>>             using PMT message when doing your solution?
>>>>
>>>>
>>>>             In addition, something that seemed to help me:
>>>>
>>>>             I used this:
>>>>
>>>>             https://lists.gnu.org/archive/html/discuss-gnuradio/2011=
-09/msg00309.html
>>>>
>>>>
>>>>             In the USRP Sinc block, in center frequency parameter,
>>>>             I've put this:
>>>>
>>>>             uhd.tune_request(target_freq=3D1003e6, dsp_freq=3D0,
>>>>             dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)
>>>>
>>>>             With this, the transmitted 1003MHz signal is cleaner
>>>>             and the spur is now further away at 16KHz offset with
>>>>             amplitude of 60dBc below the signal.
>>>>
>>>>             This alone cleans the spectrum!
>>>>
>>>>             In addition, I type "mode_n=3Dinteger" in the
>>>>             Device Address parameter of the UHD: USRP Sink block,
>>>>             but it doesn't seem to affect. The tuning without DSP
>>>>             correction in the FPGA seems to just be sufficient to
>>>>             clean the spectrum.
>>>>
>>>>             Why is that? Do you recommend using something else?
>>>>
>>>>             Thanks
>>>>
>>>>             Dor
>>>             Note that only works if the underlying RF PLL has enough
>>>             "resolution" to make that work--particularly in
>>>             integer-N mode.
>>>
>>>             I'm surprised that the DDC/DUC have such significant
>>>             "close in" spurs.=C2=A0=C2=A0=C2=A0 I don't know if there=
's anyone from
>>>             the R&D team
>>>             =C2=A0 on here who can authoritatively comment, but this =
is a
>>>             bit of a surprise.
>>>
>>>
>>>>
>>>>
>>>>
>>>>             =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=
=D7=9D =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-15:08 =
=D7=9E=D7=90=D7=AA =E2=80=AADor Ratz=E2=80=AC=E2=80=8F
>>>>             <=E2=80=AAdorratz12@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>
>>>>                 Hi Marcus,
>>>>
>>>>                 Can I pass the desired center frequency with a PMT
>>>>                 message?
>>>>                 I want to dynamically change the transmitted center
>>>>                 frequency of UHD: USRP Sink block.
>>>>
>>>>                 So static frequency=C2=A0in the block is not suffici=
ent.
>>>>
>>>>                 Thanks
>>>>                 Dor
>>>>
>>>>                 =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=
=D7=95=D7=9D =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-=
13:44 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus
>>>>                 M=C3=BCller=E2=80=AC=E2=80=8F <=E2=80=AAmarcus.muell=
er@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>>>>
>>>>                     Hi Dor,
>>>>
>>>>                     >=C2=A0 1. How to change the to integer_n tuning=
?
>>>>                     Should I just type "mode_n=3Dinteger" in the
>>>>                     >=C2=A0 =C2=A0 =C2=A0Device Address parameter of=
 the UHD: USRP
>>>>                     Sink block in the grc?
>>>>
>>>>                     yes. Or, better, instead of just tuning to the
>>>>                     target frequency, you can pass a
>>>>                     uhd.tune_request_t to
>>>>                     uhd_usrp_{sink,source}.set_center_frequency,
>>>>                     like this:
>>>>
>>>>                     my_uhd_block.set_center_frequency(uhd.tune_reque=
st_t(
>>>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0target_freq =3D 2.4e9,
>>>>                     =C2=A0args=3D"mode_n=3Dinteger"))
>>>>
>>>>                     (you can also use a uhd.tune_request_t in the
>>>>                     RF frequency fields of the GRC block)
>>>>
>>>>                     Note that you're probably best off using
>>>>                     tune_request_t anyway, as it allows you to tune
>>>>                     your LO far away from your band of interest,
>>>>                     given the analog bandwidth allows for that,
>>>>                     using `target_freq=3D` and `rf_freq` or `dsp_fre=
q`.
>>>>
>>>>                     For more information on tuning, see the UHD
>>>>                     manual [1]
>>>>
>>>>                     >=C2=A0 2. How to know for sure what the
>>>>                     mode(integer of fractional) of the NCO is? Can
>>>>                     I print
>>>>                     >=C2=A0 =C2=A0 =C2=A0its status/get it somehow?
>>>>
>>>>                     looking at the UHD source code: the routines
>>>>                     responsible for tuning just themselves check
>>>>                     for "mode_n" being set to "integer" in the
>>>>                     device or tune request arguments.
>>>>
>>>>                     Best regards,
>>>>                     Marcus
>>>>
>>>>                     [1]
>>>>                     https://files.ettus.com/manual/page_general.html=
#general_tuning
>>>>
>>>
>>
>

--------------R0r9xZWVllIsAqCMzEx1dDBe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 06/03/2023 17:13, Dor Ratz wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPY8uVMnbo=3DwQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"rtl">
        <div dir=3D"ltr">Hey,=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks a lot.=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><u>Several questions after thinking about it:</u=
></div>
      </div>
    </blockquote>
    <blockquote type=3D"cite"
cite=3D"mid:CAPY8uVMnbo=3DwQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gm=
ail.com">
      <div dir=3D"rtl">
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">1. Do you mean R&amp;D of Ettus or GNURadio? Can
          you address me to the relevant email address? <br>
        </div>
      </div>
    </blockquote>
    This thread really belongs on the usrp-users mailing list now,
    rather than discuss-gnuradio, i have copied usrp-users, and<br>
    =C2=A0 removed discuss-gnuradio.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPY8uVMnbo=3DwQp-e1AK6NOY_vW-1mD-bkU2ScczNdsHfyo0n3Q@mail.gm=
ail.com">
      <div dir=3D"rtl">
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">2. Let me see if I get it right for USRP X310
          with UBX-160:</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">
          <ul>
            <li>Motherboard clock =3D MCR=C2=A0 =3Dmaster_clock_rate=C2=A0=
 =3D main
              clock rate =3D default value is 200MHz. The 10MHz REFCLK is
              used to set it.<br>
            </li>
            <li>Daughterboard Clock Rate in Hz =3D=C2=A0dboard_clock_rate=
 =3D
              default value is 50MHz, need to change it to 20MHz for
              center frequencies=C2=A0under 1GHz do decrease spurs.<br>
              This is actually the clock that the motherboard injects
              into the daughterboard , i.e it is the reference=C2=A0clock=
 of
              the MAX2871 PLL which is on the daughterboard.</li>
            <li>According to=C2=A0<a
href=3D"http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.ht=
ml"
                moz-do-not-send=3D"true">this link</a>, if I
              set=C2=A0"mode_n=3Dinteger","int_n_step=3D100e3", in Device=
 Address
              parameter in USRP Sink block, then the frequency
              resolution on the PLL is:<br>
              frequency resolution [Hz] =3D int_n_step [Hz] =3D
              dboard_clock_rate [Hz] / (R divider=C2=A0 [-])=C2=A0<br>
              <br>
              For example:<br>
              100e3 [Hz] =3D 50e6 [Hz] / 500<br>
              <br>
              So -&gt;<b> the frequency=C2=A0resolution of the PLL is set=
 by
                the "int_n_step" parameter</b> -&gt; it calculates=C2=A0t=
he R
              divider [-] in the PLL relating to dboard_clock_rate and
              desired int_n__step.<br>
              I guess that the result must be in the range of allowed
              PLL's R divider values from 1 to 1023.</li>
          </ul>
          3.=C2=A0 =C2=A0Do I must set the=C2=A0
          "int_n_step" parameter as follows?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">4.=C2=A0 Does the frequency resolution range fro=
m
          50MHz when R divider=3D 1[-] up to 0.05[MHz] when R divider =3D
          1000[-] ?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Referring to this sentence in=C2=A0<a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/max2871.pdf"
            moz-do-not-send=3D"true">max2871 PLL datasheet</a>:</div>
        <div dir=3D"ltr">""The minimum R counter divide ratio is 1, and
          the maximum divide ratio is 1023"</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">5. Where can I find the relevant source code?
          I've looked=C2=A0<a href=3D"https://github.com/EttusResearch/uh=
d"
            moz-do-not-send=3D"true">here</a>=C2=A0but I'm not sure where=
 the
          daughterboard code/relevant code is.=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks=C2=A0</div>
        <div dir=3D"ltr">Dor</div>
        <div dir=3D"ltr">
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=
=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=91=D7=B3, 6 =D7=91=D7=9E=D7=A8=D7=
=A5 2023
          =D7=91-19:10 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=
=E2=80=8F &lt;=E2=80=AA<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>=E2=
=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 06/03/2023 08:54, Dor Ratz wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr">Hey Marcus,=C2=A0</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Thanks a lot.</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I'm=C2=A0using e<span>xternal 10 MHz ref=
erence
                    clock (</span>REFCLK) with 1e-12[Hz] frequency
                  resolution -&gt; it feeds my PLL in the UBX-160
                  daughterboard in the X310 USRP.</div>
              </div>
            </blockquote>
            The REFCLCK input to the X310 is used to control the
            master-clock(s) on the motherboard, which, in turn produce
            clocks for<br>
            =C2=A0 the daughtercards--but the daughtercards never see you=
r
            external clock directly.<br>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">So, <b>when defining "mode_n=3Dinteger"<=
/b>
                  in the Device Address parameter of the UHD: USRP Sink
                  block in GNURadio to set PLL in integer-N mode, <b>what
                    is exactly R-DIVIDER=3D reference divider of the PLL<=
/b>?</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I've looked in the PLL (max2871)
                  datasheet:</div>
                <div dir=3D"ltr"><a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/max2871.pdf"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://www.analog.co=
m/media/en/technical-documentation/data-sheets/max2871.pdf</a><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">According to it:</div>
                <div dir=3D"ltr">"The minimum R counter divide ratio is 1=
,
                  and the maximum divide ratio is 1023"</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">I understand that if for example, the R
                  counter=3D(R-DIVIDER)=3D1000 -&gt; the frequency
                  resolution is 10MHz/1000 =3D 0.01MHz=3D 10KHz, correct?=
</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">But I don't know what is the R-DIVIDER
                  chosen=C2=A0in the PLL with the settings in gnuradio.</=
div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Thanks,</div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr">Dor</div>
                <div dir=3D"ltr"><br>
                </div>
              </div>
            </blockquote>
            You'd have to go looking through the source code.=C2=A0 Unles=
s
            someone from R&amp;D happens to know off the top of their
            heads.<br>
            =C2=A0 10 years ago, I kept all of this in my head--when ther=
e
            were FAR fewer products to keep track of and the codebase
            was<br>
            =C2=A0 more modest.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"rtl">
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
                <div dir=3D"ltr"><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=
=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=94=D7=B3, 2 =D7=91=D7=9E=D7=
=A8=D7=A5
                  2023 =D7=91-21:55 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D.=
 Leech=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 02/03/2023 13:09, Dor Ratz wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"rtl">
                        <div dir=3D"ltr">Hey,</div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">Do you know how=C2=A0to assess t=
he RF
                          PLL resolution in integer-N mode?</div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">I've looked in ANALOG max2871 PL=
L
                          datasheet - not sure I found the answer there.<=
/div>
                        <div dir=3D"ltr"><a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/max2871.pdf"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">https://www.a=
nalog.com/media/en/technical-documentation/data-sheets/max2871.pdf</a><br=
>
                        </div>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">The Ettus team is CC here too -
                          it will be helpful to know what you suggest.</d=
iv>
                        <div dir=3D"ltr"><br>
                        </div>
                        <div dir=3D"ltr">Thanks,</div>
                        <div dir=3D"ltr">Dor <br>
                        </div>
                      </div>
                    </blockquote>
                    It will depend on the REFCLK that is being used by
                    that board (I do not happen to know off the top of
                    my head), and by<br>
                    =C2=A0 whatever flexibility in reference divider the =
PLL
                    has.<br>
                    <br>
                    In an Integer-N PLL (and you can spend quite a bit
                    of time learning how PLL synthesizers work online),
                    the "step size" is<br>
                    =C2=A0 dependent on the REFCLK, which itself may have=
 a
                    divider on it.=C2=A0 So, let's say your REFCLK is 10M=
Hz
                    and there's a divider<br>
                    =C2=A0 that can divide the reference clock by up to
                    10000, then your minimum step size is 1kHz.=C2=A0=C2=A0=
 This
                    is in tension with the<br>
                    =C2=A0 fact that having a high ratio between the desi=
red
                    frequency and the reference frequency tends to
                    create signal-quality issues,<br>
                    =C2=A0 like, as I recall, phase noise.=C2=A0 But I'd =
research
                    the datasheet and the overall concept of PLL
                    synthesis.<br>
                    <br>
                    My recollection on the X310 is that the
                    reference-clock frequency is 100MHz, but that's just
                    a hazy memory.<br>
                    <br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"rtl">
                        <div dir=3D"ltr"><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=
=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                          =D7=93=D7=B3, 1 =D7=91=D7=9E=D7=A8=D7=A5 2023 =D7=
=91-21:10 =D7=9E=D7=90=D7=AA =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F
                          &lt;=E2=80=AA<a href=3D"mailto:patchvonbraun@gm=
ail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 01/03/2023 13:14, Dor Ratz wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div dir=3D"rtl">
                                  <div dir=3D"ltr">Hey Marcus, How are
                                    you?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Not sure if you got my
                                    email.</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Do you know anyway I
                                    can change transmitted frequency
                                    using PMT message when doing your
                                    solution?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In addition, something
                                    that seemed to help me:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">I used this:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><a
href=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00=
309.html"
                                      rel=3D"noreferrer" target=3D"_blank=
"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">htt=
ps://lists.gnu.org/archive/html/discuss-gnuradio/2011-09/msg00309.html</a=
></div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In the USRP Sinc block=
,
                                    in center frequency parameter, I've
                                    put this:</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">
                                    <pre style=3D"color:rgb(0,0,0)">uhd.t=
une_request(target_freq=3D1003e6, dsp_freq=3D0,
dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)</pre>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">With this, the
                                    transmitted 1003MHz signal is
                                    cleaner and the spur is now further
                                    away at 16KHz offset with amplitude
                                    of 60dBc below the signal.</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">This alone cleans the
                                    spectrum!</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">In addition, I type
                                    "mode_n=3Dinteger" in the</div>
                                  <div dir=3D"ltr">Device Address
                                    parameter of the UHD: USRP Sink
                                    block, but it doesn't seem to
                                    affect. The tuning without DSP
                                    correction in the FPGA seems to just
                                    be sufficient to clean the spectrum.<=
/div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Why is that? Do you
                                    recommend using something else?</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Thanks</div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr">Dor <br>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            Note that only works if the underlying RF
                            PLL has enough "resolution" to make that
                            work--particularly in integer-N mode.<br>
                            <br>
                            I'm surprised that the DDC/DUC have such
                            significant "close in" spurs.=C2=A0=C2=A0=C2=A0=
 I don't
                            know if there's anyone from the R&amp;D team<=
br>
                            =C2=A0 on here who can authoritatively commen=
t,
                            but this is a bit of a surprise.<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div dir=3D"rtl">
                                  <div dir=3D"ltr"><br>
                                  </div>
                                  <div dir=3D"ltr"><br>
                                  </div>
                                </div>
                                <br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"rtl" class=3D"gmail_attr">=E2=
=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A
                                    =D7=99=D7=95=D7=9D =D7=91=D7=B3, 27 =D7=
=91=D7=A4=D7=91=D7=A8=D7=B3 2023 =D7=91-15:08 =D7=9E=D7=90=D7=AA
                                    =E2=80=AADor Ratz=E2=80=AC=E2=80=8F &=
lt;=E2=80=AA<a
                                      href=3D"mailto:dorratz12@gmail.com"
                                      rel=3D"noreferrer noreferrer
                                      noreferrer noreferrer"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">dor=
ratz12@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote"
                                    style=3D"margin:0px 0px 0px
                                    0.8ex;border-left:1px solid
                                    rgb(204,204,204);padding-left:1ex">
                                    <div dir=3D"rtl">
                                      <div dir=3D"ltr">Hi Marcus,</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Can I pass the
                                        desired center frequency with a
                                        PMT message?=C2=A0</div>
                                      <div dir=3D"ltr">I want to
                                        dynamically change the
                                        transmitted center frequency of
                                        UHD: USRP Sink block.=C2=A0</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">So static
                                        frequency=C2=A0in the block is no=
t
                                        sufficient.</div>
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <div dir=3D"ltr">Thanks=C2=A0</div>
                                      <div dir=3D"ltr">Dor</div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"rtl"
                                          class=3D"gmail_attr">=E2=80=AB=D7=
=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D
                                          =D7=91=D7=B3, 27 =D7=91=D7=A4=D7=
=91=D7=A8=D7=B3 2023 =D7=91-13:44 =D7=9E=D7=90=D7=AA
                                          =E2=80=AAMarcus M=C3=BCller=E2=80=
=AC=E2=80=8F &lt;=E2=80=AA<a
                                            href=3D"mailto:marcus.mueller=
@ettus.com"
                                            rel=3D"noreferrer noreferrer
                                            noreferrer noreferrer"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true"
                                            class=3D"moz-txt-link-freetex=
t">marcus.mueller@ettus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote"
                                          style=3D"margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1=
ex">Hi
                                          Dor,<br>
                                          <br>
                                          &gt;=C2=A0 1. How to change the=
 to
                                          integer_n tuning? Should I
                                          just type "mode_n=3Dinteger" in
                                          the<br>
                                          &gt;=C2=A0 =C2=A0 =C2=A0Device =
Address
                                          parameter of the UHD: USRP
                                          Sink block in the grc?<br>
                                          <br>
                                          yes. Or, better, instead of
                                          just tuning to the target
                                          frequency, you can pass a <br>
                                          uhd.tune_request_t to
                                          uhd_usrp_{sink,source}.set_cent=
er_frequency,
                                          like this:<br>
                                          <br>
my_uhd_block.set_center_frequency(uhd.tune_request_t(<br>
                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0target_freq =3D
                                          2.4e9,<br>
                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0
                                          =C2=A0args=3D"mode_n=3Dinteger"=
))<br>
                                          <br>
                                          (you can also use a
                                          uhd.tune_request_t in the RF
                                          frequency fields of the GRC
                                          block)<br>
                                          <br>
                                          Note that you're probably best
                                          off using tune_request_t
                                          anyway, as it allows you to
                                          tune <br>
                                          your LO far away from your
                                          band of interest, given the
                                          analog bandwidth allows for
                                          that, <br>
                                          using `target_freq=3D` and
                                          `rf_freq` or `dsp_freq`.<br>
                                          <br>
                                          For more information on
                                          tuning, see the UHD manual [1]<=
br>
                                          <br>
                                          &gt;=C2=A0 2. How to know for s=
ure
                                          what the mode(integer of
                                          fractional) of the NCO is? Can
                                          I print<br>
                                          &gt;=C2=A0 =C2=A0 =C2=A0its sta=
tus/get it
                                          somehow? <br>
                                          <br>
                                          looking at the UHD source
                                          code: the routines responsible
                                          for tuning just themselves
                                          check <br>
                                          for "mode_n" being set to
                                          "integer" in the device or
                                          tune request arguments.<br>
                                          <br>
                                          Best regards,<br>
                                          Marcus<br>
                                          <br>
                                          [1] <a
                                            href=3D"https://files.ettus.c=
om/manual/page_general.html#general_tuning"
                                            rel=3D"noreferrer noreferrer
                                            noreferrer noreferrer
                                            noreferrer" target=3D"_blank"
                                            moz-do-not-send=3D"true"
                                            class=3D"moz-txt-link-freetex=
t">https://files.ettus.com/manual/page_general.html#general_tuning</a><br=
>
                                        </blockquote>
                                      </div>
                                    </div>
                                  </blockquote>
                                </div>
                              </div>
                            </blockquote>
                            <br>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------R0r9xZWVllIsAqCMzEx1dDBe--

--===============3085981040133664260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3085981040133664260==--

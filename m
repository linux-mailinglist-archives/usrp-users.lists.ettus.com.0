Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DA97165CC
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:03:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C3D838460B
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 11:03:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685459004; bh=FFT0SyJpse9tsBopO7s9LuXl5WcZL7O+fSpmk0WHVAY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DRmAweya80wOEgj+NzyxaAm76+N/DGlX5WMJigbnp77S041jlLIATtSUSZ7oJs0hF
	 eVA7iPFv1lUzNvIl4h/bcAJWNu2geJrnQIrlp5X3IciFPDYy18JxryHw0YwWFDV0dT
	 ofNCYI365oKjsSdmCwebP9P7kNkJqM7oadCvjXBKkhKu4zWLDgS1sRCtfc7diQ8IfZ
	 mJgMP0UUqHwieQ/t6Da7vWJyVMcwgvC9LofB5xQoAlBs2SERjlFyquSfwDrYvcDJYf
	 pzJH2Cin7BU/f/4qXZKGiU7MEZpMJzhFxydLmwNDUJijnjHI7aKpyEChO+8bwR98VZ
	 XZFIgQQ8rtnOg==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 306A1384532
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 11:02:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="gQRuVnjQ";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-626157a186bso15890546d6.1
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 08:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1685458940; x=1688050940;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HFtb1cQtQC7wqCcP/wevjvcc5PKXYtatFqgXHDUH9qI=;
        b=gQRuVnjQGA0TL21WZaQMcsRw5WwdzwclwtHmAbP93iqSde8jHuiQ2X78FfgQ76kJuu
         kZasoX/QjpJZ5WjHaX5PO/KYqJykrDgI/ca1lcsUZZxsIdEhcqrc6ZFeyxk4KMH8kluV
         N/8iZtu8Eqwu4jzW0JuGxJEDWp2Ruc84XvLzmaUgkPP8y9HPJPPdRpbwb+G/S6iIpKLm
         sahee51CV708RkreSDzyoTkX0yDQCjUiJ/FlZ5MLtepu4brF9kjJl4svAwDTY25TvMut
         wv4RdpC10j2IKgwlje+Lgg4xuvEZ2ZKLjywxv/Vif3TVym3QrFL8+Jl/dyH9kzzgz8AA
         CCQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458940; x=1688050940;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HFtb1cQtQC7wqCcP/wevjvcc5PKXYtatFqgXHDUH9qI=;
        b=FDNFg2efhdRkcjq08mihdWv3NZRfprZjK2IFg4WEBaJfr0YIQJZklmUH+FCmiMFwW+
         RTk5mcP/RU7yof83ic30FggNvvlY4s0gVbLlTxfy3KOljYl6C6EWxto9G0BmcHbdHou5
         PSkrJcPHeMlPzgVgPlRUIW0Un3MddOkPhmW4k38WMmF7tqwdVKTUlOCe/pc3XQx2jjb0
         DYe6+ePZqTHY5skd5wzo7N8bIy7g2MDXoSnjdnSfPL6QA2sHIoJMugwPyDQV6bUQX8Av
         oC0nsrgZsTnqefTqtpSTn/kRbJAt8SJdbaG8S0daSGJ2VhZYj3cuWwpNQkl9K8lVUu3v
         8RGg==
X-Gm-Message-State: AC+VfDy1RRBgaVySugUUs/R9wd7YPgUv7hTxjCI0/me/0y9dOFZ24IYt
	aqbFU4j72PAb55aQjQoC5lx6t8A1CH3sP3NUK27LZQ==
X-Google-Smtp-Source: ACHHUZ5p4e2rpyXpTZcNOssjGPOGFm1ZEdw3T0exSUG5+mFLUAYiqr2Yhz1DwSHHRuOOaMa2BfMdOThmNklx5KHb7lM=
X-Received: by 2002:ad4:596d:0:b0:616:7977:2460 with SMTP id
 eq13-20020ad4596d000000b0061679772460mr2316175qvb.24.1685458939908; Tue, 30
 May 2023 08:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
In-Reply-To: <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
From: Mena Ghebranious <mena@chaosinc.com>
Date: Tue, 30 May 2023 08:02:08 -0700
Message-ID: <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: WEIPJ3KS53WMAISGLAVFRASJMXVW42SM
X-Message-ID-Hash: WEIPJ3KS53WMAISGLAVFRASJMXVW42SM
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Wabeke <LWabeke@csir.co.za>, "Marcus D. Leech" <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WEIPJ3KS53WMAISGLAVFRASJMXVW42SM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0406005995739493555=="

--===============0406005995739493555==
Content-Type: multipart/alternative; boundary="00000000000065b09605fcea7da2"

--00000000000065b09605fcea7da2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I took a closer look at the end of my transmission; what originally
appeared to be a lack of symmetry between the start and end delays is
actually a cutoff of 31 samples at the end of the transmission - in other
words, I'm missing the 31 samples at the end of the TX that I put into the
TX streamer.

Looking into the FPGA logic, I believe there is actually a bug in the most
recent implementation - the transmission strobe that controls the TX output
is based on the TX state machine in the radio TX core block, who's timing
does not take into account the group delay of the DUC filter.  Regardless
of whether or not we are using ATR to control GPIOs, the transmission gets
cut off and the last set of samples  do not appear at the TX output (the
number of samples missing is equal to the group delay / latency of the
filter for a given sample rate.)

As a temporary workaround, we could zero pad the end of our TX waveforms,
but some of the waveforms we want to run have tight PRFs and this will
heavily limit the rate at which we could run them.




On Fri, May 26, 2023 at 9:17=E2=80=AFAM Jonathon Pendlum <jonathon.pendlum@=
ettus.com>
wrote:

> Hi Leon,
>
> You can increase the command FIFO depth to allow for queuing up many more
> timed commands. This does require building a new FPGA image though.
>
> Jonathon
>
> On Thu, May 25, 2023 at 10:15 AM Leon Wabeke <LWabeke@csir.co.za> wrote:
>
>> We also used timed GPIO to generate certain strobes, however I found at
>> some point that I could not generate more than about 6k strobes per seco=
nd
>> on an X310 (if I recall correctly) (that was with about UHD3.13 if I rec=
all
>> correctly, thus things might have changed) using the timed commands, or =
I
>> ended up overflowing the command queues. Thus we decided in applications
>> where we need more individual transmits per second (many small packets),=
 we
>> needed to switch to using the automatically generated strobe and handle =
the
>> misalignment that arose from that.
>>
>>
>>
>> *From: *Marcus D. Leech <patchvonbraun@gmail.com>
>> *Date: *Thursday, 25 May 2023 at 15:50
>> *To: *Rob Kossler <rkossler@nd.edu>, Leon Wabeke <LWabeke@csir.co.za>
>> *Cc: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject: *Re: [USRP-users] Re: N320 - GPIO ATR output to TX output dela=
y
>>
>> On 25/05/2023 09:41, Rob Kossler wrote:
>>
>> I may be off-base here, but I thought that the GPIO control occurred fro=
m
>> the Radio block such that a DUC group delay would not be the place to lo=
ok.
>> I am wondering if the GPIO control does not use timed commands.  Instead=
 of
>> the automatic setting of the Tx GPIO, we have used custom GPIO with time=
d
>> commands to pulse a GPIO bit as a trigger at the same time as we begin t=
he
>> radios.  But, I have not checked the relative timing between my GPIO pul=
se
>> and the RF because I was only interested in repeatability rather than
>> knowing the precise relative timing.
>>
>> It was certainly the case in the past that the ATR logic was somewhat
>> asynchronous to the state of the DUC.  This may well have
>>   changed while I wasn't paying attention.   Since I'm not in R&D, and
>> not an FPGA guy, this could be the case.
>>
>> Regardless, my point about T/R control signals occurring
>> not-precisely-aligned with when sinusoids are coming out the antenna
>>   port remains.  It will always be tricky to get it "exact".
>>
>>
>>
>>
>>
>>
>>
>> On Thu, May 25, 2023 at 4:55=E2=80=AFAM Leon Wabeke <LWabeke@csir.co.za>=
 wrote:
>>
>> Hi
>>
>>
>>
>> We have also used a =E2=80=9Cmeasure in the lab approach=E2=80=9D, toget=
her with zero
>> padding before and after and have at times seen these need to be adjuste=
d
>> after a UHD upgrade.
>>
>>
>>
>> We have also in some cases taken the GPIO strobe via another FPGA to
>> adjust the strobe by adding an extra configurable delays on rising and
>> falling edges. It is just annoying to use an external function to do thi=
s
>> and it would in my opinion be a very useful feature if such configurable
>> delays were part of the basic built-in GPIO functionality at least in te=
rms
>> of the =E2=80=9Cautomatic strobe state machine=E2=80=9D, thus not requir=
ing another FPGA or
>> having to try to integrate custom logic inside the UHD firmware, which
>> might need to be reintegrated on subsequent updates.
>>
>>
>>
>> Thanks
>>
>> Leon
>>
>>
>>
>> *From: *Marcus D. Leech <patchvonbraun@gmail.com>
>> *Date: *Wednesday, 24 May 2023 at 23:14
>> *To: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject: *[USRP-users] Re: N320 - GPIO ATR output to TX output delay
>>
>> [The e-mail server of the sender could not be verified (SPF Record)]
>>
>> On 24/05/2023 16:22, mena@chaosinc.com wrote:
>>
>> Thanks. Two follow up questions:
>>
>>    1. For a given sample rate, is there a way to deterministically
>>    calculate the group delay?
>>
>> Look at the filter code in the version of the FPGA image that you're
>> using, determine which filter bits and
>>   pieces are "in circuit" when you select your sample-rate, and calculat=
e
>> the group delay from that.
>>
>>   Many folks who have run into the same problem have used a "measure it
>> in the lab" approach, and done
>>   that for new releases of the FPGA code--the R&D team does occasionally
>> make changes to the filter
>>   parameters and "doctrine" in order to optimize for certain types of
>> applications.  This may well
>>   de-optimize for others.  SDRs are general-purpose devices, which means
>> that there will be cases where they
>>   aren't "out of the factory" optimized for any *particular* application=
.
>>
>> The approach some have take is to pad at one end or the other (or both)
>> to account for these delays, which comprise
>>   a deterministic-but-version-dependent component, and an analog
>> component that is less deterministic, but at much
>>   smaller times scales.
>>
>>
>>
>>    1. Why do I not see the same delay at the back end of the
>>    transmission (i.e. after the GPIO goes low)?
>>
>> My suspicion is that part of what you're seeing is an analog switching
>> effect, and things like turn-on/turn-off
>>   times are not perfectly symmetric.
>>
>> This issue (lack of tight synchronization between ATR signals and actual
>> waveforms appearing at the antenna) has been
>>   an issue in digital comms since I got involved in the 1980s, albeit, i=
n
>> the 1980s, the time-scales were much larger.
>>   You simply had to account for these effects for every new radio your
>> application encountered.   In the DSP age, the
>>   effects are at much smaller time-scales, but so are the data rates.
>>
>>
>>
>>
>> _______________________________________________
>>
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> --
>
> Jonathon
>
>
> *DISCLAIMER: Any attached Code is provided As Is. It has not been tested
> or validated as a product, for use in a deployed application or system, o=
r
> for use in hazardous environments. You assume all risks for use of the
> Code. Use of the Code is subject to terms of the licenses to the UHD or
> RFNoC code with which the Code is used. Standard licenses to UHD and RFNo=
C
> can be found at https://www.ettus.com/sdr-software/licenses/
> <https://www.ettus.com/sdr-software/licenses/>.*
>
> *NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.*
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000065b09605fcea7da2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I took a closer look at the =
end of my transmission; what originally appeared to be a lack of symmetry=
=C2=A0between the start and end delays is actually a cutoff of 31 samples a=
t the end of the transmission=C2=A0- in other words, I&#39;m missing the 31=
 samples at the end of the TX that I put into the TX streamer.=C2=A0 =C2=A0=
</div><div><br></div><div>Looking into the FPGA logic, I believe there is a=
ctually a bug in the most recent implementation - the transmission strobe t=
hat controls the TX output is based on the TX state machine in the radio TX=
 core block, who&#39;s timing does not take into account the group delay of=
 the DUC filter.=C2=A0 Regardless of whether or not we are using=C2=A0ATR t=
o control GPIOs, the transmission gets cut off and the last set of samples=
=C2=A0 do not appear at the TX output (the number of samples missing is equ=
al to the group delay / latency of the filter for a given sample rate.)</di=
v><div><br></div><div>As a temporary workaround, we could zero pad the end =
of our TX waveforms, but some of the waveforms we want to run have tight PR=
Fs and this will heavily limit the rate at which we could run them.</div><d=
iv>=C2=A0</div><div><br></div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 26, 2023 at 9:17=
=E2=80=AFAM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.c=
om">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"auto">Hi Leon,</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">You can increase the command FIFO depth to=
 allow for queuing up many more timed commands. This does require building =
a new FPGA image though.</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Jonathon</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 25, 2023 at 10:15 AM Leon Wabeke &lt;<a href=3D=
"mailto:LWabeke@csir.co.za" target=3D"_blank">LWabeke@csir.co.za</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-ZA">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We also used timed GP=
IO to generate certain strobes, however I found at some point that I could =
not generate more than about 6k strobes per second on an X310 (if I recall =
correctly)
 (that was with about UHD3.13 if I recall correctly, thus things might have=
 changed) using the timed commands, or I ended up overflowing the command q=
ueues. Thus we decided in applications where we need more individual transm=
its per second (many small packets),
 we needed to switch to using the automatically generated strobe and handle=
 the misalignment that arose from that.<u></u><u></u></span></p></div></div=
><div lang=3D"EN-ZA"><div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;p=
adding:3pt 0cm 0cm;border-color:rgb(181,196,223) currentcolor currentcolor"=
>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><b><span style=3D"font-=
size:12pt;color:black">From:
</span></b><span style=3D"font-size:12pt;color:black">Marcus D. Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
<b>Date: </b>Thursday, 25 May 2023 at 15:50<br>
<b>To: </b>Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;, Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csi=
r.co.za" target=3D"_blank">LWabeke@csir.co.za</a>&gt;<br>
<b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>Re: [USRP-users] Re: N320 - GPIO ATR output to TX output de=
lay<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On 25/05/2023 09:41, =
Rob Kossler wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I may be off-base her=
e, but I thought that the GPIO control occurred from the Radio block such t=
hat a DUC group delay would not be the place to look. I am wondering if the=
 GPIO control does not use timed commands.=C2=A0
 Instead of the automatic setting of the Tx GPIO, we have used custom GPIO =
with timed commands=C2=A0to pulse a GPIO bit as a trigger at the same time =
as we begin the radios.=C2=A0 But, I have not checked the relative timing b=
etween my GPIO pulse and the RF because I
 was only interested in repeatability rather than knowing the precise relat=
ive timing.<u></u><u></u></span></p>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">It was certainly the =
case in the past that the ATR logic was somewhat asynchronous to the state =
of the DUC.=C2=A0 This may well have<br>
=C2=A0 changed while I wasn&#39;t paying attention.=C2=A0=C2=A0 Since I&#39=
;m not in R&amp;D, and not an FPGA guy, this could be the case.<br>
<br>
Regardless, my point about T/R control signals occurring not-precisely-alig=
ned with when sinusoids are coming out the antenna<br>
=C2=A0 port remains.=C2=A0 It will always be tricky to get it &quot;exact&q=
uot;.<br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On Thu, May 25, 2023 =
at 4:55=E2=80=AFAM Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csir.co.za" ta=
rget=3D"_blank">LWabeke@csir.co.za</a>&gt; wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0c=
m;border-color:currentcolor currentcolor currentcolor rgb(204,204,204)">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We have also used a =
=E2=80=9Cmeasure in the lab approach=E2=80=9D, together with zero padding b=
efore and after and have at times seen these need to be adjusted after
 a UHD upgrade.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We have also in some =
cases taken the GPIO strobe via another FPGA to adjust the strobe by adding=
 an extra configurable delays on rising and falling
 edges. It is just annoying to use an external function to do this and it w=
ould in my opinion be a very useful feature if such configurable delays wer=
e part of the basic built-in GPIO functionality at least in terms of the =
=E2=80=9Cautomatic strobe state machine=E2=80=9D,
 thus not requiring another FPGA or having to try to integrate custom logic=
 inside the UHD firmware, which might need to be reintegrated on subsequent=
 updates.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Leon
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;p=
adding:3pt 0cm 0cm;border-color:rgb(181,196,223) currentcolor currentcolor"=
>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><b><span style=3D"font-=
size:12pt;color:black">From:
</span></b><span style=3D"font-size:12pt;color:black">Marcus D. Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
<b>Date: </b>Wednesday, 24 May 2023 at 23:14<br>
<b>To: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>[USRP-users] Re: N320 - GPIO ATR output to TX output delay<=
/span><span style=3D"font-size:11pt"><u></u><u></u></span></p>
</div>
<pre style=3D"font-family:monospace">[The e-mail server of the sender could=
 not be verified (SPF Record)]<u style=3D"font-family:monospace"></u><u sty=
le=3D"font-family:monospace"></u></pre>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On 24/05/2023 16:22,
<a href=3D"mailto:mena@chaosinc.com" target=3D"_blank">mena@chaosinc.com</a=
> wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p>Thanks. Two follow up questions:<u></u><u></u></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal">
<span style=3D"font-size:11pt">For a given sample rate, is there a way to d=
eterministically calculate the group delay?<u></u><u></u></span></li></ol>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt">Look at the filter code in the version of the FPGA image that you&#=
39;re using, determine which filter bits and<br>
=C2=A0 pieces are &quot;in circuit&quot; when you select your sample-rate, =
and calculate the group delay from that.<br>
<br>
=C2=A0 Many folks who have run into the same problem have used a &quot;meas=
ure it in the lab&quot; approach, and done<br>
=C2=A0 that for new releases of the FPGA code--the R&amp;D team does occasi=
onally make changes to the filter<br>
=C2=A0 parameters and &quot;doctrine&quot; in order to optimize for certain=
 types of applications.=C2=A0 This may well<br>
=C2=A0 de-optimize for others.=C2=A0 SDRs are general-purpose devices, whic=
h means that there will be cases where they<br>
=C2=A0 aren&#39;t &quot;out of the factory&quot; optimized for any *particu=
lar* application.<br>
<br>
The approach some have take is to pad at one end or the other (or both) to =
account for these delays, which comprise<br>
=C2=A0 a deterministic-but-version-dependent component, and an analog compo=
nent that is less deterministic, but at much<br>
=C2=A0 smaller times scales.<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal">
<span style=3D"font-size:11pt">Why do I not see the same delay at the back =
end of the transmission (i.e. after the GPIO goes low)?<u></u><u></u></span=
></li></ol>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt">My suspicion is that part of what you&#39;re seeing is an analog sw=
itching effect, and things like turn-on/turn-off<br>
=C2=A0 times are not perfectly symmetric.<br>
<br>
This issue (lack of tight synchronization between ATR signals and actual wa=
veforms appearing at the antenna) has been<br>
=C2=A0 an issue in digital comms since I got involved in the 1980s, albeit,=
 in the 1980s, the time-scales were much larger.<br>
=C2=A0 You simply had to account for these effects for every new radio your=
 application encountered.=C2=A0=C2=A0 In the DSP age, the<br>
=C2=A0 effects are at much smaller time-scales, but so are the data rates.<=
br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt"><u></u>=C2=A0<u></u></span></p>
<pre style=3D"font-family:monospace">______________________________________=
_________<u style=3D"font-family:monospace"></u><u style=3D"font-family:mon=
ospace"></u></pre>
<pre style=3D"font-family:monospace">USRP-users mailing list -- <a href=3D"=
mailto:usrp-users@lists.ettus.com" style=3D"font-family:monospace" target=
=3D"_blank">usrp-users@lists.ettus.com</a><u style=3D"font-family:monospace=
"></u><u style=3D"font-family:monospace"></u></pre>
<pre style=3D"font-family:monospace">To unsubscribe send an email to <a hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" style=3D"font-family:monospac=
e" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><u style=3D"font-f=
amily:monospace"></u><u style=3D"font-family:monospace"></u></pre>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">_____________________=
__________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</div>
</blockquote>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div><span class=3D"gmail_signature_prefix">-- </span><=
br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><p style=3D"=
margin:0in;font-family:Calibri,sans-serif"><font style=3D"background-color:=
rgb(255,255,255)" color=3D"#000000">Jonathon</font></p><p style=3D"margin:0=
in;font-family:Calibri,sans-serif"><br></p><p><font size=3D"1" color=3D"#99=
9999"><i><span style=3D"font-family:Arial,sans-serif">DISCLAIMER: Any attac=
hed Code is provided As Is. It has not been tested or validated as a produc=
t, for use in a deployed application or system, or for use in hazardous env=
ironments. You assume all risks for use of the Code. Use of the Code is sub=
ject to terms of the licenses to the UHD or RFNoC code with which the Code =
is used. Standard licenses to UHD and RFNoC can be found at=C2=A0<a href=3D=
"https://www.ettus.com/sdr-software/licenses/" target=3D"_blank">https://ww=
w.ettus.com/sdr-software/licenses/</a>.</span></i><u></u><u></u></font></p>=
<p><i><span style=3D"font-family:Arial,sans-serif"><font size=3D"1" color=
=3D"#999999">NI will only perform services based on its understanding and c=
ondition that the goods or services (i) are not for the use in the producti=
on or development of any item produced, purchased, or ordered by any entity=
 with a footnote 1 designation in the license requirement column of Supplem=
ent No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such=
 a company is not a party to the transaction.=C2=A0 If our understanding is=
 incorrect, please notify us immediately because a specific authorization m=
ay be required from the U.S. Commerce Department before the transaction may=
 proceed further.</font></span></i></p></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000065b09605fcea7da2--

--===============0406005995739493555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0406005995739493555==--

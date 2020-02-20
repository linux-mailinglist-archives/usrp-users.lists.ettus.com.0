Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E9A1666B1
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2020 19:55:40 +0100 (CET)
Received: from [::1] (port=47226 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4qz3-0004cx-MU; Thu, 20 Feb 2020 13:55:37 -0500
Received: from mail-io1-f44.google.com ([209.85.166.44]:41034)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <alvaropr97@gmail.com>)
 id 1j4qz0-0004Uf-0h
 for USRP-users@lists.ettus.com; Thu, 20 Feb 2020 13:55:34 -0500
Received: by mail-io1-f44.google.com with SMTP id m25so5853162ioo.8
 for <USRP-users@lists.ettus.com>; Thu, 20 Feb 2020 10:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rl5YXg6+SpL3Sh6b1wZI/qCqIbK5s7ghTLrx+RNRKwg=;
 b=o8SUupk99D0MEPhLno2tsOEK7KB3Gcf0U2nsGCPX89emsQ3gl0oYPAge534DCFGA+v
 RdyLKnecIlR3qoIIMjSwPf3A0iMdJ1xEIxCDDEc++XBrpr9CY+kMMy4KC8p6LcXU0JFD
 OKNs+xwRP5DDaIFOYcQtHI75IWdYbyv7wiM4wNu/Fsu8opixm4y4AhvIbzmNzc/6zkwg
 D+nEKKcc7JgBybjhtr2JuHTLYJw5+eyqyGmbhYpJzCIbwIWe4Oo3c8I+Pir01nZk327E
 QJ8tDerY7znPiqJGJciS4gAmIlBAxKOfYulAcXgwwv4iegRTZck9M+b0LuDNrXe7vgah
 0lYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rl5YXg6+SpL3Sh6b1wZI/qCqIbK5s7ghTLrx+RNRKwg=;
 b=ovkOpX2l0+pzxnqUA/kWlC8F9B1lvIDvcyeMNmDIMAlhEXRdSCO+Axn+AWv0eetU8W
 YtsmTmcWOmVyVYHJAnCQoFX8FbfGsELz+SYx2QqcILjU5JovqvR0U2u9J4hKVaiCx7Um
 vaMzlffhrvSivgF8HdhkCQnZZoWMHdT0fnDQu51+s6ptVUjLARVoR/8Xwv10mf37J1ua
 2MsjuzVIsOPNX1Qt/QJUi5Ugr6bKvEwJ00iH1mEx5cfufl5Fmf2Y3GUQk3h8WKEqsTeB
 +4MvltFINCWZhfs7BIUT/iIqWoFvjW8kHAU/DUEZef7s8Bn6zm/ttHFhLntoHa+9bCJk
 s6sQ==
X-Gm-Message-State: APjAAAWCCELCXxMjvbKHE7UURhaCFeC4e4mUOGkznu0+S1FNt9SFSUTX
 6AL6ksFkPVhOWJ5OnoJvmjEjPlp1DIsC8sKDbA==
X-Google-Smtp-Source: APXvYqyrKgt+oJTmJ1JLaxjZuXd1XrJ7xPieIBECgHLplq2TiFjrhfjCnxnjh4snU1xMIHn2V5+nCrZ8DPqslG+YY2w=
X-Received: by 2002:a6b:e506:: with SMTP id y6mr638905ioc.209.1582224893334;
 Thu, 20 Feb 2020 10:54:53 -0800 (PST)
MIME-Version: 1.0
References: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
 <E01AEA46-6030-4BFF-91CE-0535F84D2FF5@gmail.com>
 <CAAZMsC2Do=wLYC-tzKAW8hCezdsZ1zpEtRwN_VtxBgcEXAg8NA@mail.gmail.com>
 <5E4ECFB7.4060504@gmail.com>
In-Reply-To: <5E4ECFB7.4060504@gmail.com>
Date: Thu, 20 Feb 2020 19:54:41 +0100
Message-ID: <CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] GNU Radio UHD Blocks Resolution
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
From: Alvaro Pendas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alvaro Pendas <alvaropr97@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3152038532694082496=="
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

--===============3152038532694082496==
Content-Type: multipart/alternative; boundary="000000000000b8d887059f06700d"

--000000000000b8d887059f06700d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I get what you mean, but maybe I did not explain myself correctly. Let's
forget about GNU Radio and focus on the ADC. The ADC resolution is 12 bits,
so it has 4096 digital levels. The question here is, does the usrp adapts
those levels to the signal it is receiving at each moment? If that
adaptation does not exist, the ACD is going to use all the 4096 only when
the analog input signal is close to the input max of the ADC. Otherwise,
only some of those levels are used. For example, half of them (2048) if the
level of the ACD input is half the max.

Also, mind that, in the receiving part, I think that what you explained is
not completely right. I am working with a QPSK receiver and I demodulate
the symbols correctly (with a lot of noise), but the output of the UHD:USRP
Source are actually about 0.0003. That's why I'm afraid of the problem I've
mentioned above.

Thank you for your patient.

El jue., 20 feb. 2020 a las 19:28, Marcus D. Leech (<patchvonbraun@gmail.co=
m>)
escribi=C3=B3:

> On 02/20/2020 11:38 AM, Alvaro Pendas wrote:
>
> However, the way I see it, this represents a problem in the receiving
> part. Let me put it this way: the max output of the ADC is 1, and that
> corresponds with the max input. That max input would represent the case
> when you receive a high power signal and you set your drive amplifier nex=
t
> to its max.
> So, If you are receiving a low power QPSK signal, with your gain set to 3=
0
> dB, the output of your ADC would use a really small part of the range
> (let's say from -0.05 to 0.05). However, if your digital levels go from -=
1
> to 1 and are represented with 12 bits, using such a small part of the ran=
ge
> would make the quantization error a problem.
>
> Gnu Radio uses a floating-point {-1.0, 1.0} representation, which UHD
> *scales* into a range that is appropriate for whatever hardware
>   you're using.
>
> So, your 0.05 is scaled to about 102 by UHD prior to presentation to the
> DAC, and conversely in the receive direction.
>
>
>
>
> El mi=C3=A9., 19 feb. 2020 a las 20:04, Marcus D Leech (<
> patchvonbraun@gmail.com>) escribi=C3=B3:
>
>> Indeed. You=E2=80=99d have to use an external calibration source at seve=
ral
>> places over your parameter space (frequency gain sample rate)
>>
>> Sent from my iPhone
>>
>> On Feb 19, 2020, at 1:54 PM, Alvaro Pendas <alvaropr97@gmail.com> wrote:
>>
>> =EF=BB=BF
>> Marcus thank your for your answer,
>>
>> First of all, you are right, the range is -1 to 1 (instead of 0 to 1 as =
I
>> said before). So, for example, in the receiving part, the values you get
>> out of the UHD Source have a linear relationship with the voltage of the
>> analog signal, but I understand there is no easy way to calculate that
>> level with the only information of the GNU Radio samples. Is that correc=
t?
>>
>> El mi=C3=A9., 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (=
<
>> usrp-users@lists.ettus.com>) escribi=C3=B3:
>>
>>> On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:
>>> > Hello,
>>> > I am using GNU Radio and the USRP B200. I have noticed that for the
>>> > GNU block UHD: USRP Sink, the values you pass to the block must be in
>>> > the range 0 to 1. I guess that means if you do not want to lose
>>> > resolution you must ensure that you use the full range, that is to
>>> > say, your minimum is 0 or close to 0, and your max is 1 or close to 1=
.
>>> > Am I correct?
>>> >
>>> > On the other hand, what are the meaning of the values produce by the
>>> > block UHD: USRP Source? They must be related to the signal power, but
>>> > I am not sure about their range. Is the minimum value that block can
>>> > produce the min of the ADC output, and the max, the max of the ADC
>>> > output? With the USRP B200 the ADC resolution is 12 bits, are the min
>>> > and the max always set with the same value, or does it depend on the
>>> > USRP configuration?
>>> >
>>> > I am using GNU Radio right now, but probably, just knowing how this
>>> > works with UHD would be enough to understand the rest.
>>> >
>>> > Thank you for your time,
>>> >
>>> > Alvaro
>>> >
>>> Gnu radio generally likes to have baesband data streams scaled into
>>> {-1.0,+1.0} which are linearly related to instantaneous voltages at
>>>    the antenna of the hardware.
>>>
>>> To a first approximation, a value near +1.0 or -1.0 will drive the ADC
>>> to its maximum +/- value.  But that's only an approximation, since the
>>>    signal is processed a fair amount (linearly) prior to reaching the
>>> ADC/DAC, and with analog hardware there's no way of ensuring that
>>>    a max value wont' over-drive the analog hardware.
>>>
>>> Power of a sinusoidal signal is proportional to the  I*I + Q*Q --
>>> remember we're dealing with *voltages* here, so ohms law applies...
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>

--000000000000b8d887059f06700d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I get what you mean, but maybe I did not explain myself co=
rrectly. Let&#39;s forget about GNU Radio and focus on the ADC. The ADC res=
olution is 12 bits, so it has 4096 digital levels. The question here is, do=
es the usrp adapts those levels to the signal it is receiving at each momen=
t? If that adaptation does not exist, the ACD is going to use all the 4096 =
only when the analog input signal is close to the input max of the ADC. Oth=
erwise, only some of those levels are used. For example, half of them (2048=
) if the level of the ACD input is half the max.<br><br>Also, mind that, in=
 the receiving part, I think that what you explained is not completely righ=
t. I am working with a QPSK receiver and I demodulate the symbols correctly=
 (with a lot of noise), but the output of the UHD:USRP Source are actually =
about 0.0003. That&#39;s why I&#39;m afraid of the problem I&#39;ve mention=
ed above.<br><br>Thank you for your patient.</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">El jue., 20 feb. 2020 a las 19:=
28, Marcus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvo=
nbraun@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/20/2020 11:38 AM, Alvaro Pendas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>However, the way I see it, this represents a problem in the
          receiving part. Let me put it this way: the max output of the
          ADC is 1, and that corresponds with the max input. That max
          input would represent the case when you receive a high power
          signal and you set your drive amplifier next to its max.<br>
        </div>
        <div>So, If you are receiving a low power QPSK signal, with your
          gain set to 30 dB, the output of your ADC would use a really
          small part of the range (let&#39;s say from -0.05 to 0.05).
          However, if your digital levels go from -1 to 1 and are
          represented with 12 bits, using such a small part of the range
          would make the quantization error a problem.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    Gnu Radio uses a floating-point {-1.0, 1.0} representation, which
    UHD *scales* into a range that is appropriate for whatever hardware<br>
    =C2=A0 you&#39;re using.<br>
    <br>
    So, your 0.05 is scaled to about 102 by UHD prior to presentation to
    the DAC, and conversely in the receive direction.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9., 19 feb. 2020 a =
las
          20:04, Marcus D Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.=
com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Indeed. You=E2=80=99d have to use an external
            calibration source at several places over your parameter
            space (frequency gain sample rate)<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Feb 19, 2020, at 1:54 PM,
                Alvaro Pendas &lt;<a href=3D"mailto:alvaropr97@gmail.com" t=
arget=3D"_blank">alvaropr97@gmail.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">=EF=BB=BF
                <div dir=3D"ltr">
                  <div>Marcus thank your for your answer,</div>
                  <div><br>
                  </div>
                  <p style=3D"color:rgb(14,16,26);background:transparent no=
ne repeat scroll 0% 0%;margin-top:0pt;margin-bottom:0pt"><span style=3D"col=
or:rgb(14,16,26);background:transparent none repeat scroll 0% 0%;margin-top=
:0pt;margin-bottom:0pt">First of all,
                      you are right, the range is -1 to 1 (instead of 0
                      to 1 as I said before). So, for example, in the
                      receiving part, the values you get out of the UHD
                      Source have</span><strong style=3D"color:rgb(14,16,26=
);background:transparent none repeat scroll 0% 0%;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"color:rgb(14,16,26);background:transparent none rep=
eat scroll 0% 0%;margin-top:0pt;margin-bottom:0pt">=C2=A0</span></strong><s=
pan style=3D"color:rgb(14,16,26);background:transparent none repeat scroll =
0% 0%;margin-top:0pt;margin-bottom:0pt">a linear
                      relationship with the voltage of the analog
                      signal, but I understand there is no easy way to
                      calculate that level with the only information of
                      the GNU Radio samples. Is that correct?</span></p>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9., 19 fe=
b.
                    2020 a las 19:22, Marcus D. Leech via USRP-users
                    (&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt;)
                    escribi=C3=B3:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 02/1=
9/2020
                    12:01 PM, Alvaro Pendas via USRP-users wrote:<br>
                    &gt; Hello,<br>
                    &gt; I am using GNU Radio and the USRP B200. I have
                    noticed that for the <br>
                    &gt; GNU block UHD: USRP Sink, the values you pass
                    to the block must be in <br>
                    &gt; the range 0 to 1. I guess that means if you do
                    not want to lose <br>
                    &gt; resolution you must ensure that you use the
                    full range, that is to <br>
                    &gt; say, your minimum is 0 or close to 0, and your
                    max is 1 or close to 1. <br>
                    &gt; Am I correct?<br>
                    &gt;<br>
                    &gt; On the other hand, what are the meaning of the
                    values produce by the <br>
                    &gt; block UHD: USRP Source? They must be related to
                    the signal power, but <br>
                    &gt; I am not sure about their range. Is the minimum
                    value that block can <br>
                    &gt; produce the min of the ADC output, and the max,
                    the max of the ADC <br>
                    &gt; output? With the USRP B200 the ADC resolution
                    is 12 bits, are the min <br>
                    &gt; and the max always set with the same value, or
                    does it depend on the <br>
                    &gt; USRP configuration?<br>
                    &gt;<br>
                    &gt; I am using GNU Radio right now, but probably,
                    just knowing how this <br>
                    &gt; works with UHD would be enough to understand
                    the rest.<br>
                    &gt;<br>
                    &gt; Thank you for your time,<br>
                    &gt;<br>
                    &gt; Alvaro<br>
                    &gt;<br>
                    Gnu radio generally likes to have baesband data
                    streams scaled into <br>
                    {-1.0,+1.0} which are linearly related to
                    instantaneous voltages at<br>
                    =C2=A0 =C2=A0the antenna of the hardware.<br>
                    <br>
                    To a first approximation, a value near +1.0 or -1.0
                    will drive the ADC <br>
                    to its maximum +/- value.=C2=A0 But that&#39;s only an
                    approximation, since the<br>
                    =C2=A0 =C2=A0signal is processed a fair amount (linearl=
y)
                    prior to reaching the <br>
                    ADC/DAC, and with analog hardware there&#39;s no way of
                    ensuring that<br>
                    =C2=A0 =C2=A0a max value wont&#39; over-drive the analo=
g hardware.<br>
                    <br>
                    Power of a sinusoidal signal is proportional to the=C2=
=A0
                    I*I + Q*Q -- <br>
                    remember we&#39;re dealing with *voltages* here, so ohm=
s
                    law applies...<br>
                    <br>
                    <br>
                    <br>
                    <br>
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
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000b8d887059f06700d--


--===============3152038532694082496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3152038532694082496==--


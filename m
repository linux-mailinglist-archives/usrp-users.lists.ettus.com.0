Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3E27AE41
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 18:44:43 +0200 (CEST)
Received: from [::1] (port=54856 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsVEt-0003X9-WC; Tue, 30 Jul 2019 12:44:40 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:41304)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sammywelschen@gmail.com>)
 id 1hsVEq-0003OT-GG
 for usrp-users@lists.ettus.com; Tue, 30 Jul 2019 12:44:36 -0400
Received: by mail-io1-f53.google.com with SMTP id j5so125509760ioj.8
 for <usrp-users@lists.ettus.com>; Tue, 30 Jul 2019 09:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=EowkZHhv7k8QUWECRyTPimFvvB4dW8UMFcAtU+RCHDs=;
 b=TehblxDib/gQpBAYJzRkPixA/yNjLvBUhBfbbm+WvECOuLwj8Tq8mLu0kAzd4nqAgG
 uhojCk4KgLut3Kn8wXsIttj7n1AD65HTXRE6h2LOWshO9kIfjoFXQe64HUu6KrjYK2aZ
 2EiixofE1/WOjeV8OadTJ7VTaAQpuy4L54h06ajgowO5IhndFQIaKQMGk9E+WIlLFGjo
 VQT8/GHcKcuSKBPFanzUws7wiV8JEXgyqrPT0mr1i3wWP+7QBh+QBB1v3Uv+B0v+g3ym
 9jR3cXLD3S6AFXzh8kaKwK5GP0xFLAHGTWkbreXuwmNnJuo1fqHWYNMLEmwfR/no9Q0W
 Di+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=EowkZHhv7k8QUWECRyTPimFvvB4dW8UMFcAtU+RCHDs=;
 b=KWQmC21G/8Pyh2ugBfVGDJfSQR7HQYmsj6eNrvn/RtYTiVEeS1PT2D164El3OuuQd1
 JJaiPHIdcklk+HlMGUzYancpdB9YLYgGjM8y96SDcNcktvYH61kwyEiCGcYRrigX76xE
 /eQSzCRky7XT2V9QziZOD1a7+RwfPhK8c7XevpZrxvFLBYlPW7Beo72ott4veP9FQ2jV
 ONu+iICGAlDqSNlyrpTHaDxZ1JHJpLo+3ZUeGFIpQobj1+J/2w44pkqb0O7FFP96XdkT
 jBr72QG41zECBOZ65HfoaBpEeHCivqRT9T6AMgiXGyndi0vXYZgkknChvkYwqGg7dWCY
 aN+g==
X-Gm-Message-State: APjAAAXzvGusxIBvnGoSokiW555KehIfyK/wSVpk2xLVe1cZQ+EfT3R2
 Se2g3fSaPZyc+v3Ozew6tLj0N6GycXeFzDkTwUWdWw==
X-Google-Smtp-Source: APXvYqwIcXII/XSc3V1QpNUS1oPnSZT2R6GwmAcgM7Efejea7VjQxakttRr0fFqYGb+81FT4f1K4uBuD1bo7qrdxV+c=
X-Received: by 2002:a02:c90d:: with SMTP id t13mr117028117jao.62.1564505035570; 
 Tue, 30 Jul 2019 09:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAKJyDkKyb2H0gi_Kcy_5=YE0NTqLguMVfeWnGT6gXiQDe=3ppA@mail.gmail.com>
 <D975AAE1-4B39-430E-B0AB-C3A996368FB3@gmail.com>
 <CAE6G02-D9-HFhk8ZW-CRhK93UTew8CfKthp9mBuo5x+cLKGzWA@mail.gmail.com>
 <5D31DA6E.7000902@gmail.com>
In-Reply-To: <5D31DA6E.7000902@gmail.com>
Date: Tue, 30 Jul 2019 18:43:44 +0200
Message-ID: <CAE6G02_JXqOBZdhK9k6mqcPA6BqF498KYuPXa2dLSXesC+=ErQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Fwd: Phase coherency for low RX frequencies
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
From: Sammy Welschen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sammy Welschen <sammywelschen@gmail.com>
Content-Type: multipart/mixed; boundary="===============9027842018951007171=="
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

--===============9027842018951007171==
Content-Type: multipart/alternative; boundary="000000000000e502f5058ee8b694"

--000000000000e502f5058ee8b694
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry for not specifying, but I was talking about two N310 or N320 devices.
Do you know how it is in that case?

Am Fr., 19. Juli 2019 um 16:58 Uhr schrieb Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com>:

> On 07/19/2019 05:24 AM, Sammy Welschen via USRP-users wrote:
>
> Thanks for your reply.
>
> I am a bit confused now. Since the LO for this stage is derived from the
> sample clock, wouldn't I be in the same situation as if I only shared 10
> MHz reference and PPS signals?
> Quote from https://files.ettus.com/manual/page_usrp_n3xx.html:
>
> My understanding was that we were talking about the N320, and only a
> single unit?
>
> I need to confirm, but I think the upconverter LO on the N320 is a single
> (clock-derived) oscillator, shared among the channels in the unit.  In th=
at
> case, the
>   phase relations will be static across powerups, assuming that you share
> the other LOs.
>
> In the case of multiple N320s, I don't yet have an answer, since it
> depends critically on how that upconverter LO is produced, and how the
> external-reference
>   PLL works.
>
>
>
> ----------------------
>
> Reasons to use an external LO include:
> Improving phase alignment: The N310 itself has no way of aligning phase
> between channels, and phase will be random between runs. By applying an
> external LO, the phase ambiguity is reduced to 180 degrees, produced by a
> by-2 divider in the AD9371 transceiver IC.
> Improving phase noise: The quality of the onboard LO depends on the
> external reference clock, among other things. By providing a custom LO
> signal, it is possible to more accurately tune, assuming the externally
> generated LO signal is coming from a high-quality oscillator.
> ----------------------
>
> I would still have a certain fixed phase relation between channels, but
> with more fluctuations and a phase difference that changes on every turn =
on
> of the devices (i.e. the same situation as when sharing 10 Mhz and PPS
> signals). See for example the plots on pages 24-25 of
> https://forums.ni.com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%=
20Phase-Coherent%20RF%20Measurements.pdf
> for an illustration of what I mean.
>
> Am Do., 18. Juli 2019 um 19:25 Uhr schrieb Marcus D Leech via USRP-users =
<
> usrp-users@lists.ettus.com>:
>
>>
>>
>>
>> I have just been corrected by one of my colleagues at Ettus.
>>>
>>> While there is an up conversion stage for frequencies below 450Mhz, the
>>> LO for that stage is fixed frequency, and derived from the sample clock=
 and
>>> coherent across channels.
>>>
>>> So there should be no random phase offset among channels even below
>>> 450Mhz when LO sharing.
>>>
>>> This is correct as far as I know. Although I don=E2=80=99t have an N320=
 in my
>>> lab, it uses an up conversion scheme for lower frequencies. That scheme
>>> does not participate in the LO sharing.
>>>
>>> Sent from my iPhone
>>>
>>>
>>> On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> I have to acquire phase coherent data on multiple channels using USRP
>>> N310/320 devices.
>>>
>>>
>>>
>>> Am I correct in assuming that for frequencies below 450 MHz, there is n=
o
>>> way to remove random phase differences between channels due to the
>>> additional frequency shift involved (shown for example in the block
>>> diagram
>>> http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png
>>> <https://urldefense.com/v3/__http:/www.ettus.com/wp-content/uploads/201=
9/03/N320BlockDiagram.png__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08af=
k3IjpbsIlbrDYEk9H2AfliCLM52OcRdC4$>)?
>>> As I understand it, by using the same LO signal for all channels I coul=
d
>>> remove the differences for frequencies above 450 MHz, but this is of no=
 use
>>> for frequencies below 450 MHz due to this the additional stage.
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> <https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3=
IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> <https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3=
IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$>
>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e502f5058ee8b694
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry for not specifying, but I was talking about two=
 N310 or N320 devices. Do you know how it is in that case?</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Fr., 19. Juli =
2019 um 16:58=C2=A0Uhr schrieb Marcus D. Leech via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-9210552578656300425moz-cite-prefix">On 07/19/201=
9 05:24 AM, Sammy Welschen
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><font face=3D"arial, sans-serif">Thanks for your
          reply.=C2=A0</font>
        <div><font face=3D"arial, sans-serif"><br>
          </font></div>
        <div><font face=3D"arial, sans-serif">I am a bit confused now.
            Since the LO for this stage is derived from the sample
            clock, wouldn&#39;t I be in the same situation as if I only
            shared 10 MHz reference and PPS signals?=C2=A0</font></div>
        <div><font face=3D"arial, sans-serif">Quote from=C2=A0<a href=3D"ht=
tps://files.ettus.com/manual/page_usrp_n3xx.html" target=3D"_blank">https:/=
/files.ettus.com/manual/page_usrp_n3xx.html</a>:</font></div>
      </div>
    </blockquote>
    <font face=3D"arial, sans-serif">My understanding was that we were talk=
ing
      about the N320, and only a single unit?<br>
      <br>
      I need to confirm, but I think the upconverter LO on the N320 is a
      single (clock-derived) oscillator, shared among the channels in
      the unit.=C2=A0 In that case, the<br>
      =C2=A0 phase relations will be static across powerups, assuming that
      you share the other LOs.<br>
      <br>
      In the case of multiple N320s, I don&#39;t yet have an answer, since
      it depends critically on how that upconverter LO is produced, and
      how the external-reference<br>
      =C2=A0 PLL works.<br>
      <br>
      <br>
    </font>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><font face=3D"arial, sans-serif"><br>
          </font></div>
        <div><font face=3D"arial, sans-serif">----------------------</font>=
</div>
        <div>
          <p style=3D"font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-stretch:normal;font-size:14px;line-height:22px;color:rgb(0,0,0)"=
><font face=3D"arial, sans-serif">Reasons to use an external LO
              include:</font></p>
          <font face=3D"arial, sans-serif"><span style=3D"color:rgb(0,0,0);=
font-size:14px">Improving phase
              alignment: The N310 itself has no way of aligning phase
              between channels, and phase will be random between runs.
              By applying an external LO, the phase ambiguity is reduced
              to 180 degrees, produced by a by-2 divider in the AD9371
              transceiver IC.</span><br>
            <span style=3D"color:rgb(0,0,0);font-size:14px">Improving
              phase noise: The quality of the onboard LO depends on the
              external reference clock, among other things. By providing
              a custom LO signal, it is possible to more accurately
              tune, assuming the externally generated LO signal is
              coming from a high-quality oscillator.</span></font></div>
        <div><font face=3D"arial, sans-serif">----------------------=C2=A0=
=C2=A0<br>
          </font></div>
        <div><font face=3D"arial, sans-serif"><br>
          </font></div>
        <div><font face=3D"arial, sans-serif">I would still have a certain
            fixed phase relation between channels, but with more
            fluctuations and a phase difference that changes on every
            turn on of the devices (i.e. the same situation as when
            sharing 10 Mhz and PPS signals). See for example the plots
            on pages 24-25 of=C2=A0<a href=3D"https://forums.ni.com/ni/atta=
chments/ni/grp-1008/110/1/Fundamentals%20of%20Phase-Coherent%20RF%20Measure=
ments.pdf" target=3D"_blank">https://forums.ni.com/ni/attachments/ni/grp-10=
08/110/1/Fundamentals%20of%20Phase-Coherent%20RF%20Measurements.pdf</a>=C2=
=A0
            for an illustration of what I mean.</font></div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">Am Do., 18. Juli 2019 um
            19:25=C2=A0Uhr schrieb Marcus D Leech via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt;:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"auto"><br>
              <br>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr"><br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"auto">I have just been corrected by one
                        of my colleagues at Ettus.=C2=A0
                        <div><br>
                        </div>
                        <div>While there is an up conversion stage for
                          frequencies below 450Mhz, the LO for that
                          stage is fixed frequency, and derived from the
                          sample clock and coherent across channels.=C2=A0<=
/div>
                        <div><br>
                        </div>
                        <div>So there should be no random phase offset
                          among channels even below 450Mhz when LO
                          sharing.=C2=A0</div>
                        <div><br>
                          <blockquote type=3D"cite">
                            <div dir=3D"ltr">
                              <div class=3D"gmail-m_-9210552578656300425m_4=
109572153054765750gmail-m_-766200740446686168gmail-m_8464511976241383310Wor=
dSection1">
                                <div>
                                  <div>
                                    <div>
                                      <p class=3D"MsoNormal" style=3D"margi=
n-bottom:12pt">This
                                        is correct as far as I know.
                                        Although I don=E2=80=99t have an N3=
20 in
                                        my lab, it uses an up conversion
                                        scheme for lower frequencies.
                                        That scheme does not participate
                                        in the LO sharing.=C2=A0</p>
                                      <div id=3D"gmail-m_-92105525786563004=
25m_4109572153054765750gmail-m_-766200740446686168gmail-m_84645119762413833=
10m_-2455621878214780349AppleMailSignature">
                                        <p class=3D"MsoNormal">Sent from
                                          my iPhone</p>
                                      </div>
                                      <div>
                                        <p class=3D"MsoNormal" style=3D"mar=
gin-bottom:12pt"><br>
                                          On Jul 18, 2019, at 11:17 AM,
                                          Sammy Welschen via USRP-users
                                          &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                                          wrote:</p>
                                      </div>
                                      <blockquote style=3D"margin-top:5pt;m=
argin-bottom:5pt">
                                        <div>
                                          <div>
                                            <div>
                                              <p class=3D"MsoNormal">I
                                                have to acquire phase
                                                coherent data on
                                                multiple channels using
                                                USRP N310/320 devices.</p>
                                            </div>
                                            <div>
                                              <p class=3D"MsoNormal">=C2=A0=
</p>
                                            </div>
                                            <p class=3D"MsoNormal">Am I
                                              correct in assuming that
                                              for frequencies below 450
                                              MHz, there is no way to
                                              remove random phase
                                              differences between
                                              channels due to the
                                              additional frequency shift
                                              involved (shown for
                                              example in the block
                                              diagram=C2=A0
                                              <a href=3D"https://urldefense=
.com/v3/__http:/www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.p=
ng__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliC=
LM52OcRdC4$" target=3D"_blank">
http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png</a>)?
                                              As I understand it, by
                                              using the same LO signal
                                              for all channels I could
                                              remove the differences for
                                              frequencies above 450 MHz,
                                              but this is of no use for
                                              frequencies below 450 MHz
                                              due to this the additional
                                              stage.</p>
                                          </div>
                                        </div>
                                      </blockquote>
                                      <blockquote style=3D"margin-top:5pt;m=
argin-bottom:5pt">
                                        <div>
                                          <p class=3D"MsoNormal">__________=
_____________________________________<br>
                                            USRP-users mailing list<br>
                                            <a href=3D"mailto:USRP-users@li=
sts.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                                            <a href=3D"https://urldefense.c=
om/v3/__http:/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com__=
;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM5Z=
dVPAfg$" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a></p>
                                        </div>
                                      </blockquote>
                                    </div>
                                    <p class=3D"MsoNormal">________________=
_______________________________<br>
                                      USRP-users mailing list<br>
                                      <a href=3D"mailto:USRP-users@lists.et=
tus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                                      <a href=3D"https://urldefense.com/v3/=
__http:/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com__;%21fq=
WJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg=
$" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com</a></p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </blockquote>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </blockquote>
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
      <br>
      <fieldset class=3D"gmail-m_-9210552578656300425mimeAttachmentHeader">=
</fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-9210552578656300425moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-9210552578656300425moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
</pre>
    </blockquote>
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

--000000000000e502f5058ee8b694--


--===============9027842018951007171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9027842018951007171==--


Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62429447601
	for <lists+usrp-users@lfdr.de>; Sun,  7 Nov 2021 22:07:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A26238457F
	for <lists+usrp-users@lfdr.de>; Sun,  7 Nov 2021 16:07:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="aIXui5WF";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id EEC60383D11
	for <usrp-users@lists.ettus.com>; Sun,  7 Nov 2021 16:06:26 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id 131so38297609ybc.7
        for <usrp-users@lists.ettus.com>; Sun, 07 Nov 2021 13:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VNyafiZ6bAbzw6M+zFmi7TVSVrhRK3mI/RMJxeVL/sA=;
        b=aIXui5WFYpvuNBgUIrPPCnoAs2bkvUmF0apJrYln+TqZeFMhAXG5v9Qet3ir99hRmj
         GOEM5cTbVTHc/jXngSbQl41aDKdqONWXt3EnPS7eEVmdKAFo4mf4Osr2oxkR5+esW+Mz
         yvaQa2DE6Ztg02JYM9SZnHSS3s2q1/cX7yJC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VNyafiZ6bAbzw6M+zFmi7TVSVrhRK3mI/RMJxeVL/sA=;
        b=kWktKGd7gD7uGpXAs5hNbPMbOy1mRZDZqR35g6ZEEYWhHBVbqIEqp7oB8cvmZw77y3
         xdcG7b6DPsOmW6QRVPgw4oB+k981LISjLgwWZ7N8XN3uEZKjPlHlk0UPAfYbFu9/wN8H
         wbtF6HR7F7uZ3nqLCfOQITyI8tTznsdcB4ruKGbGLtTbWflwa5nqqtYB/k+6yoE2J9r6
         A4+yW7+WU0UJbd+iFX2dLK2YXfcRLNLG3Q/nnj/yBPNEqhdssdifaAaRkRHIdITPgdWq
         zdjR1HqpoNCwA1E/3gaytmHF/CrHzzl0GQ509yLfCGRT0RZeYA5y09bxgDEkEm8sG5uH
         17Nw==
X-Gm-Message-State: AOAM532GpBv9OYGZR5mrz043oPY5MyRxMC0nhacQ2Bepuh/QuEBpoEI2
	CDu+v4cS0I701lclAVCXdVCudpGJy+PSMmKiGbUKn7g6Z/yZ9hJhOgqjbhBhJ1n0iMcqYNoe0R0
	riYrKFawKuMYRSy7NOX6iDZPZ77n76Q==
X-Google-Smtp-Source: ABdhPJzQwP2t6vBqBQMYVY464kQWuY4qx4LmHyFdtfitBrMEiBKuy3bJ1BtQqVuFhdJJ/+pZsTaclpFnQAQ9oRVmTMM=
X-Received: by 2002:a25:ba0f:: with SMTP id t15mr57380370ybg.184.1636319186191;
 Sun, 07 Nov 2021 13:06:26 -0800 (PST)
MIME-Version: 1.0
References: <CA+QP_P=XaKdpHFRSi4=iz9cnCJWyHeoNdZa1=hBP8DdNoevnUA@mail.gmail.com>
 <D6D63767-1C78-4D89-9C3D-B7F26CBFF546@gmail.com> <CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmail.com>
 <ec012507-3542-fae4-0574-811144dc9353@gmail.com>
In-Reply-To: <ec012507-3542-fae4-0574-811144dc9353@gmail.com>
Date: Mon, 8 Nov 2021 02:36:15 +0530
Message-ID: <CA+QP_PmCVfNqadaoBordEZcb0rE5H_uEDkOLBw5ofO3npZKR9w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CKIF24SKL5RB4GKN6Y35CHTICVEYEQHI
X-Message-ID-Hash: CKIF24SKL5RB4GKN6Y35CHTICVEYEQHI
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding B210 and B205mini-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CKIF24SKL5RB4GKN6Y35CHTICVEYEQHI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============0924874738486012530=="

--===============0924874738486012530==
Content-Type: multipart/alternative; boundary="000000000000d51c7805d0393f50"

--000000000000d51c7805d0393f50
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the clarification.

On Sun, Nov 7, 2021 at 7:02 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-07 05:29, Arhum Ahmad wrote:
>
> Dear sir,
>
> I am using B210 and B205mini-i. I have a few doubts. I hope you can help
> me. Doubts are listed below:
>
> 1) In matlab simulink there is an option of master clock rate, but no
> description can you please elaborate on that. Also it has some limit i.e.=
,
> 56e6 Hz what happens if I use more than this limit.
>
> There's no way to select greater than 56MHz.  The RF front-end chip canno=
t
> be driven faster than that.
>
> 2) Is there any relation to select center frequency, master clock rate,
> interpolation/decimation factor and gain.
>
> The master clock rate determines that sample-rates that can be delivered
> to the host PC, but is in no way related to tuning frequency or gain.
> The sample-rate deliver to the
>   host must have an integer relationship to the master clock rate.  By
> default UHD will select a master clock rate that is "reasonable" for your
> desired sample rate.
>
>
> 3) Can you give the range of suitable gain.
>
> The gain section of the knowledge-base article will be of some help (as
> will the rest of that article).
>
> https://kb.ettus.com/B200/B210/B200mini/B205mini#Gains
>
>
>
> 4) There is an example in matlab for frequency calibration while using
> that when I plot the spectrum it's the same with or without antenna which
> suggest it is not working correctly. Can you suggest where the problem
> might be?
>
> Since this isn't a MatLab support list, no I cannot.  I can *guess* that
> this is a case where you have the gain turned down too low.
>
>
> 5) I am trying to send a simple QPSK signal and receive(example from
> matlab simulink). All blocks work fine in simulation but when I use USRP
> for Tx/Rx BER is always 0.5 and I think usrp is not detecting any signal.
> Is there any parameter mismatch?
>
> Possibly gain settings, and I MUST emphasize that if you're cabling-up tw=
o
> USRPs for RX/TX or you're looping-back on a single USRP, you MUST
> ABSOLUTELY use a 30dB
>   attenuator in-line, and use the minimum TX gain that allows success.
> But, again, this isn't a MatLab support group, so I"m just guessing as to
> what might be wrong.
>
>
>
> On Sat, Nov 6, 2021 at 5:44 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Yes. Just go ahead and ask your question.
>>
>> Sent from my iPhone
>>
>> On Nov 6, 2021, at 6:32 AM, Arhum Ahmad via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> Respected sir,
>> Is this the right email to to ask doubts?
>>
>> --
>> *Thanks and Regards*
>> *Arhum Ahmad*
>> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>>
>> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
>> <2016eez0009@iitrpr.ac.in>
>> Lab No. 323, Communication Research Lab, J.C.Bose Building
>>
>> * CONFIDENTIALITY NOTICE: The contents of this email message and any
>> attachments are intended solely for the addressee(s) and may contain
>> confidential and/or privileged information and may be legally protected
>> from disclosure. If you are not the intended recipient of this message o=
r
>> their agent, or if this message has been addressed to you in error, plea=
se
>> immediately alert the sender by reply email and then delete this message
>> and any attachments. If you are not the intended recipient, you are here=
by
>> notified that any use, dissemination, copying, or storage of this messag=
e
>> or its attachments is strictly prohibited. *
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>
> --
> *Thanks and Regards*
> *Arhum Ahmad*
> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>
> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
> <2016eez0009@iitrpr.ac.in>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
> * CONFIDENTIALITY NOTICE: The contents of this email message and any
> attachments are intended solely for the addressee(s) and may contain
> confidential and/or privileged information and may be legally protected
> from disclosure. If you are not the intended recipient of this message or
> their agent, or if this message has been addressed to you in error, pleas=
e
> immediately alert the sender by reply email and then delete this message
> and any attachments. If you are not the intended recipient, you are hereb=
y
> notified that any use, dissemination, copying, or storage of this message
> or its attachments is strictly prohibited. *
>
>
>

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--000000000000d51c7805d0393f50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the clarification.=C2=A0<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 7, 2=
021 at 7:02 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-07 05:29, Arhum Ahmad wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Dear sir,
        <div><br>
        </div>
        <div>I am using B210 and B205mini-i. I have a few doubts. I hope
          you can help me. Doubts are listed below:</div>
        <div><br>
        </div>
        <div>1) In matlab simulink there is an option of master clock
          rate, but no description can you please elaborate=C2=A0on that.
          Also it has some limit i.e., 56e6 Hz what happens if I use
          more than this limit.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    There&#39;s no way to select greater than 56MHz.=C2=A0 The RF front-end=
 chip
    cannot be driven faster than that. <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>2) Is there any relation to select=C2=A0center frequency, mast=
er
          clock rate, interpolation/decimation factor and gain.</div>
      </div>
    </blockquote>
    The master clock rate determines that sample-rates that can be
    delivered to the host PC, but is in no way related to tuning
    frequency or gain.=C2=A0=C2=A0=C2=A0 The sample-rate deliver to the<br>
    =C2=A0 host must have an integer relationship to the master clock rate.=
=C2=A0
    By default UHD will select a master clock rate that is &quot;reasonable=
&quot;
    for your desired sample rate.<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>3) Can you give the range of suitable=C2=A0gain.</div>
      </div>
    </blockquote>
    The gain section of the knowledge-base article will be of some help
    (as will the rest of that article).<br>
    <br>
    <a href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini#Gains" targ=
et=3D"_blank">https://kb.ettus.com/B200/B210/B200mini/B205mini#Gains</a><br=
>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>4) There is an example in matlab for frequency calibration
          while using that when I plot the spectrum it&#39;s the same with
          or without antenna which suggest it is not working correctly.
          Can you suggest where the problem might be?</div>
      </div>
    </blockquote>
    Since this isn&#39;t a MatLab support list, no I cannot.=C2=A0 I can *g=
uess*
    that this is a case where you have the gain turned down too low.<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>5) I am trying to send a simple QPSK signal and
          receive(example from matlab simulink). All blocks work fine in
          simulation but when I use USRP for Tx/Rx BER is always 0.5 and
          I think usrp is not detecting any signal. Is there any
          parameter mismatch?</div>
      </div>
    </blockquote>
    Possibly gain settings, and I MUST emphasize that if you&#39;re
    cabling-up two USRPs for RX/TX or you&#39;re looping-back on a single
    USRP, you MUST ABSOLUTELY use a 30dB<br>
    =C2=A0 attenuator in-line, and use the minimum TX gain that allows
    success.=C2=A0=C2=A0=C2=A0 But, again, this isn&#39;t a MatLab support =
group, so I&quot;m
    just guessing as to what might be wrong.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 6, 2021 at 5:44 P=
M
          Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Yes. Just go ahead and ask your question.=C2=A0=
<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Nov 6, 2021, at 6:32 AM, Arhum
                Ahmad via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">=EF=BB=BF
                <div dir=3D"ltr">Respected sir,
                  <div>Is this the right email=C2=A0to to ask doubts?<br cl=
ear=3D"all">
                    <div><br>
                    </div>
                    -- <br>
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div>
                          <div dir=3D"ltr">
                            <div style=3D"color:rgb(100,100,100);font-famil=
y:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:=
rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:small"><spa=
n>Thanks and Regards</span></b><b><br>
                              </b></div>
                            <div style=3D"color:rgb(100,100,100);font-famil=
y:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                                Ahmad</b><br>
                              Ph.D. Scholar,=C2=A0Electrical Engineering
                              Department, IIT Ropar</div>
                            <table style=3D"color:rgb(100,100,100);font-fam=
ily:Arial;font-size:12px;width:470px;margin-top:5px" width=3D"470" cellspac=
ing=3D"0" cellpadding=3D"0" border=3D"0">
                              <tbody>
                                <tr>
                                  <td style=3D"color:rgb(141,141,141)">
                                    <p style=3D"margin:0px"><span style=3D"=
display:inline-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141=
,141,141);font-family:sans-serif" target=3D"_blank">+91-</a>7974897279</spa=
n>=C2=A0<span style=3D"color:rgb(69,102,142);display:inline-block">|</span>=
=C2=A0arhum.19eez0005<span style=3D"display:inline-block"><a href=3D"mailto=
:2016eez0009@iitrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans=
-serif" target=3D"_blank">@iitrpr.ac.in</a></span></p>
                                  </td>
                                </tr>
                                <tr>
                                  <td style=3D"font-family:sans-serif;color=
:rgb(141,141,141)"><span style=3D"display:inline-block">Lab
                                      No. 323, Communication Research
                                      Lab, J.C.Bose Building</span></td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <br>
                <b><font size=3D"1"><span><span><span>
                          <div>
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div>
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
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
                              </div>
                            </div>
                          </div>
                        </span></span></span></font></b><span>_____________=
__________________________________</span><br>
                <span>USRP-users mailing list -- <a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></span>=
<br>
                <span>To unsubscribe send an email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ett=
us.com</a></span><br>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53,28,117)=
;font-family:Arial,Helvetica,sans-serif;font-size:small"><span>Thanks and R=
egards</span></b><b><br>
                </b></div>
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT
                Ropar</div>
              <table style=3D"color:rgb(100,100,100);font-family:Arial;font=
-size:12px;width:470px;margin-top:5px" width=3D"470" cellspacing=3D"0" cell=
padding=3D"0" border=3D"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span style=3D"display:inline=
-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,141);font=
-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=A0<span =
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.19=
eez0005<span style=3D"display:inline-block"><a href=3D"mailto:2016eez0009@i=
itrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-serif" target=
=3D"_blank">@iitrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</span=
></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <br>
      <b><font size=3D"1"><span><span><span>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
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
                    </div>
                  </div>
                </div>
              </span></span></span></font></b>
    </blockquote>
    <br>
  </div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div styl=
e=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-bottom:=
5px;margin-top:0px"><b style=3D"color:rgb(53,28,117);font-family:Arial,Helv=
etica,sans-serif;font-size:small"><span style=3D"font-family:&quot;times ne=
w roman&quot;,serif">Thanks and Regards</span></b><b><br></b></div><div sty=
le=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-bottom=
:5px;margin-top:0px"><b>Arhum Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical E=
ngineering Department, IIT Ropar</div><table width=3D"470" border=3D"0" cel=
lspacing=3D"0" cellpadding=3D"0" style=3D"color:rgb(100,100,100);font-famil=
y:Arial;font-size:12px;width:470px;margin-top:5px"><tbody><tr><td style=3D"=
color:rgb(141,141,141)"><p style=3D"margin:0px"><span style=3D"display:inli=
ne-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,141);fo=
nt-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=A0<spa=
n style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span style=3D"display:inline-block"><a href=3D"mailto:2016eez0009=
@iitrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-serif" targ=
et=3D"_blank">@iitrpr.ac.in</a></span></p></td></tr><tr><td style=3D"font-f=
amily:sans-serif;color:rgb(141,141,141)"><span style=3D"display:inline-bloc=
k">Lab No. 323, Communication Research Lab, J.C.Bose Building</span></td></=
tr></tbody></table></div></div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--000000000000d51c7805d0393f50--

--===============0924874738486012530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0924874738486012530==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F082846A94
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 09:22:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46FE8384C3B
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 03:22:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706862174; bh=JLh5nle/3RVq2lJNAiWmWrZ+Fi0y0EJpYauggE6xpXg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vmxiDur4kaldLAojmnPVncnlInXaL5s8wBe9on69LwP0IVAMb8r17q7Y0aVIVxPPb
	 8HCdouQYY/P6rv05DMCjrfSD/4gvhg+NlpsVzDexEMUnasIxUx9RqRR+Eu9uEnQx5V
	 Mul1QWZRixld+uy0YCQJcaMCRd5Hg8/D4ddfPuRm2Udht1iWsB9+A75LwfVMwAKsLb
	 cx3UCljMv1GytRAQdzafk9l9ahNaE7fQGokisaJ0f8WReLjRJnlsmoLB1poTwYf0qv
	 8uGlbwcT/kPf4vfJR69mIm94+lBisIcu526npRUbTMQqnqgHI3SYE4qcFjRC1PbN81
	 ubmnuZ9MkPNwg==
Received: from mailsrv.ifac.cnr.it (mailsrv.ifac.cnr.it [149.139.32.100])
	by mm2.emwd.com (Postfix) with ESMTP id 042FB380CC8
	for <usrp-users@lists.ettus.com>; Fri,  2 Feb 2024 03:21:56 -0500 (EST)
Received: from [149.139.33.244] (hydra-pc.ifac.cnr.it [149.139.33.244])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mailsrv.ifac.cnr.it (Postfix) with ESMTP id E7900905006C
	for <usrp-users@lists.ettus.com>; Fri,  2 Feb 2024 09:21:54 +0100 (CET)
Message-ID: <5d1b0bac-347f-47f8-8af2-0b27c05ec72d@ifac.cnr.it>
Date: Fri, 2 Feb 2024 09:21:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: it-IT
To: usrp-users@lists.ettus.com
References: <0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0@lists.ettus.com>
 <CABfZwcdVqmG+qDOUdTJCUNgWAr_qBGqydxKwdp7nki0rMAYJBw@mail.gmail.com>
From: Alessandro Lapini <a.lapini@ifac.cnr.it>
In-Reply-To: <CABfZwcdVqmG+qDOUdTJCUNgWAr_qBGqydxKwdp7nki0rMAYJBw@mail.gmail.com>
Message-ID-Hash: WQ6XGUGVRFTSLBFN3D3JVS5HLNUTARTC
X-Message-ID-Hash: WQ6XGUGVRFTSLBFN3D3JVS5HLNUTARTC
X-MailFrom: a.lapini@ifac.cnr.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WQ6XGUGVRFTSLBFN3D3JVS5HLNUTARTC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6228537138670604145=="

This is a multi-part message in MIME format.
--===============6228537138670604145==
Content-Type: multipart/alternative;
 boundary="------------h79KHLnaWuWHLBWQw9cA3PCj"
Content-Language: it-IT

This is a multi-part message in MIME format.
--------------h79KHLnaWuWHLBWQw9cA3PCj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Mikio,

Thank you for your answer. I was aware of that command for timekeeper=20
objects, but unfortunately I think I need also "set_command_time()" in=20
order to properly control the external switch.

Best Regards,

Alessandro

Il 02/02/24 01:42, Mikio Fukushima ha scritto:
> Hi
> get_time_now method under RFNOC is here.
> graph.get_mb_controller().get_timekeeper(0).get_time_now()
>
> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller.html
> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller_1_1t=
imekeeper.html#a3bd4ea851c401baf467169b50cc1719d
>
> I have no experience with GPIO control.
>
> Thank you.
>
>
> 2024=E5=B9=B42=E6=9C=881=E6=97=A5(=E6=9C=A8) 4:08 <a.lapini@ifac.cnr.it=
>:
>
>     Hi everyone,
>
>     I have almost done developing a customized FPGA block for the x410
>     in the RFNOC framework and an associated PC application based on
>     the Python RFNOC API. I have still to add a control for an
>     external switch and I would like to use the card's GPIO, but I
>     have no specific experience on this.
>
>     The external switch is required to toggle among 6 states on a
>     known scheduled basis, where the time periods between transitions
>     are relatively long (from tens to hundreds milliseconds). The
>     amount of actuation delay is not an issue, but the toggling signal
>     should be synchronous with the processing (the delay of the
>     piloting signal should vary at most some milliseconds).
>
>     Watching Martin Braun's presentation
>     <https://www.youtube.com/watch?v=3DppD06ZETnek&t=3D1420s>, I though=
t
>     that "timed toggles" could be a solution. Nevertheless, I cannot
>     find the methods "set_command_time()" and "get_time_now()" in
>     RFNOC API objects such as RfnocGraph or RadioControl. I am working
>     with UHD 4.3.
>
>     1) Are those methods or similar one available somewhere in the
>     Python RFNOC API? If not, is there a plan B?
>
>     2) Generally speaking, do you think my approach is good or you
>     would suggest a better way to do it in RFNOC?
>
>     Thank you in advance,
>
>     Alessandro
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> --=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
> =C2=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=
=82=A3=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,L=
td)
>
> =E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=
=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95
> =E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=83=9F=E3=83=B3=
=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=BC=A6
>
> Mail: mikio@dolphinsystem.jp
> URL : http://www.dolphinsystem.jp/
> TEL/FAX : 03-6658-4949
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------h79KHLnaWuWHLBWQw9cA3PCj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Mikio,</p>
    <p>Thank you for your answer. I was aware of that command for
      timekeeper objects, but unfortunately I think I need also
      "set_command_time()" in order to properly control the external
      switch.</p>
    <p>Best Regards,</p>
    <p>Alessandro</p>
    <p></p>
    <div class=3D"moz-cite-prefix">Il 02/02/24 01:42, Mikio Fukushima ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABfZwcdVqmG+qDOUdTJCUNgWAr_qBGqydxKwdp7nki0rMAYJBw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi
        <div><font face=3D"Arial, Helvetica, sans-serif">get_time_now
            method under RFNOC is here.<br>
          </font>
          <div>graph.get_mb_controller().get_timekeeper(0).get_time_now()=
=C2=A0<br>
          </div>
        </div>
        <div><br>
        </div>
        <div><a
href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controlle=
r.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller.html</a><b=
r>
        </div>
        <div><a
href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controlle=
r_1_1timekeeper.html#a3bd4ea851c401baf467169b50cc1719d"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller_1_1timekee=
per.html#a3bd4ea851c401baf467169b50cc1719d</a><br>
        </div>
        <div><br class=3D"gmail-Apple-interchange-newline">
          I have no experience with GPIO control.<br>
        </div>
        <div><br>
        </div>
        <div>Thank you.</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">2024=E5=B9=B42=E6=9C=881=E6=
=97=A5(=E6=9C=A8) 4:08 &lt;<a
            href=3D"mailto:a.lapini@ifac.cnr.it" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">a.lapini@ifac.cnr.it</a>&gt;:=
<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <p>Hi everyone,</p>
          <p>I have almost done developing a customized FPGA block for
            the x410 in the RFNOC framework and an associated PC
            application based on the Python RFNOC API. I have still to
            add a control for an external switch and I would like to use
            the card's GPIO, but I have no specific experience on this.</=
p>
          <p>The external switch is required to toggle among 6 states on
            a known scheduled basis, where the time periods between
            transitions are relatively long (from tens to hundreds
            milliseconds). The amount of actuation delay is not an
            issue, but the toggling signal should be synchronous with
            the processing (the delay of the piloting signal should vary
            at most some milliseconds).</p>
          <p>Watching <a
href=3D"https://www.youtube.com/watch?v=3DppD06ZETnek&amp;t=3D1420s"
              target=3D"_blank" moz-do-not-send=3D"true">Martin Braun's
              presentation</a>, I thought that "timed toggles" could be
            a solution. Nevertheless, I cannot find the methods
            "set_command_time()" and "get_time_now()" in RFNOC API
            objects such as RfnocGraph or RadioControl. I am working
            with UHD 4.3.<br>
            <br>
          </p>
          <p>1) Are those methods or similar one available somewhere in
            the Python RFNOC API? If not, is there a plan B?<br>
            <br>
          </p>
          <p>2) Generally speaking, do you think my approach is good or
            you would suggest a better way to do it in RFNOC?</p>
          <p>Thank you in advance,</p>
          <p>Alessandro<br>
            <br>
          </p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div><span style=3D"color:rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</span><br>
              </div>
              <div>=C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fuk=
ushima)</div>
              <div>=C2=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=
=83=AB=E3=83=95=E3=82=A3=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Do=
lphin System Co.,Ltd)</div>
              <div><br>
              </div>
              <div>=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=
=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=
=BC=95</div>
              <div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=
=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=
=BC=A6</div>
              <div><br>
              </div>
              <div>Mail: <a href=3D"mailto:mikio@dolphinsystem.jp"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">mikio@dolphinsystem.jp<=
/a></div>
              <div>URL : <a href=3D"http://www.dolphinsystem.jp/"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">http://www.dolphinsyste=
m.jp/</a></div>
              <div>TEL/FAX : 03-6658-4949</div>
              <div><span style=3D"color:rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</span><br>
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
  </body>
</html>

--------------h79KHLnaWuWHLBWQw9cA3PCj--

--===============6228537138670604145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6228537138670604145==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0D359658D
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 00:35:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35861383860
	for <lists+usrp-users@lfdr.de>; Tue, 16 Aug 2022 18:35:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660689326; bh=oKFNhJxFMCTUFomsWdRaoTrrn/U2uUzqt8QWtW+iN48=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=I3okeBG4dZX1ROySZBDURPB7ud9By11PNCdwIPmeHmM8vwJ4cicVa/l77cF373csR
	 VHmUZfH45gFNdPt3TTHsW7SPx8DHl8QuGcHSjugwDjxVf+0FBTP26MXfFAYr8ipZjO
	 J/sTqe5LRHvGJIm5pp1GzaAfXmfK2lLUL3jIDe1jhrY0fD6nnoq/dAezMlQI63vJAk
	 dH3JCnp6+/RIXQ0RCFLz6KyqbzjgKjRUbjTjMBBjDYzIt5v2F7EDiYI3gP3xVqOmB7
	 mGrm/9mmBiZugYGuS4tb6r78ZeD3ce+ZL4inygMmcQ0N5V1WhqKQjKg+bL/GAF/DRq
	 JmfFMwMijUNTw==
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D9EC3800BC
	for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 18:34:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R60lLwAk";
	dkim-atps=neutral
Received: by mail-io1-f49.google.com with SMTP id v185so9390144ioe.11
        for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 15:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=jj9Q92ceD9yRGs8TdnltY6FI3YzvBXBRcJMarHOlYvg=;
        b=R60lLwAkzXqX7ubtpaI4DY08tK3QXhMMcFiwuvC0Ca31v+8ppgUdq+vT36E6vf/gU8
         affjSKeJtJmX/sYJcznB8PFYH5ExM3gwgYMYjbZhmb71ckb9/lhWmJLGRyQ2y1x7fbBE
         FjVdtliY95EEa3MSs39PBvZ2zhacNmINLkTSp4sAe+HosIOQSTtzBifBtf4YkhNh/yGG
         X7759muAxdfLeZ5T+ln+uHNKuAyaZUC359WJ8q3zencG/Hd+DQMlsRSltm2qHup5ngk9
         7sOJ5Y4xJbCcFeAXkYZXtew+sATgJrws1kUYQdrPhrLuQFIcEoFgZ0Fuwwm5mt6iLGVy
         UBCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=jj9Q92ceD9yRGs8TdnltY6FI3YzvBXBRcJMarHOlYvg=;
        b=ofOVuL0rZzE7dAuX7jKebyVpje9XE/i7lAEyAQDR6VKeCqV6vrycYd3EIARqB985gf
         NDu6f3rXJwvWm3ouymsdl4KSDxE32Gl8nlaupdKNPwf1olo3RDGFkI9RPo18dDp2ofaK
         AlfrLsb1OORlq8zE1UK3DB1gmhVQUUX+EShLmnMXEOi9F/pajb9D6/XUvgOLW1SY0Pe+
         AmB7fqebTGN1YrUehFY+RCOzjvyt1Ya8Q98Lj0MuXQhi/RKRBuGvAx58MCgG0LD0Ixjv
         BHLDZFsWc+xNsvuFCi4ibcmszvky8EJMfLP4cX4IaUf2Q2hRaZTNUBLeQQnXucdFUoBg
         ZaUQ==
X-Gm-Message-State: ACgBeo1YcSpdcGVyxEzNuJQ5Uye/RH6QNRJezoKz3GUhKSt5FiGhvYzx
	xJWWfKEZLdk3vGYkW9GpSQLFz9Z1d8p099wXpgsjEsyn
X-Google-Smtp-Source: AA6agR6BRCX5a+ABfBv06ZNObbfR3UjJHICYipJ5wHN27gkXwmbcYEGOKZL7wN/gKju1PWi+vaTJ/hmXHkfNb/e1m/E=
X-Received: by 2002:a6b:e816:0:b0:688:c999:d08c with SMTP id
 f22-20020a6be816000000b00688c999d08cmr1347932ioh.100.1660689243355; Tue, 16
 Aug 2022 15:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
 <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com> <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
 <9c6f887d-4c73-d831-d287-702e037de7f3@gmail.com> <CAK6GVuOweUQEhvSwckf4ihNCP1Bd=D+pQwy9ndMtg5m5Lr9GyA@mail.gmail.com>
In-Reply-To: <CAK6GVuOweUQEhvSwckf4ihNCP1Bd=D+pQwy9ndMtg5m5Lr9GyA@mail.gmail.com>
From: Dave NotTelling <dmp250net@gmail.com>
Date: Tue, 16 Aug 2022 18:33:52 -0400
Message-ID: <CAK6GVuMz4=t7QVmpZVoWq9R5j-ufkU6MCbzHSicrRffpcSJvvQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: TTWVNKGZMBDRSECHI4G3D62V7VZW6DWY
X-Message-ID-Hash: TTWVNKGZMBDRSECHI4G3D62V7VZW6DWY
X-MailFrom: dmp250net@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTWVNKGZMBDRSECHI4G3D62V7VZW6DWY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5038026478588080242=="

--===============5038026478588080242==
Content-Type: multipart/alternative; boundary="0000000000006eca0e05e66358c4"

--0000000000006eca0e05e66358c4
Content-Type: text/plain; charset="UTF-8"

Marcus,

     I figured out the flash issue!  It was related to the power switch
issue.  There are four screws that go into the top and bottom of the front
panel of the chassis.  Two from the bottom, two from the top.  One of the
screws in the bottom was either too long, or not supposed to be there.  The
one closest to the power switch was actually pushing on the bottom of the
board.  Removing that screw released pressure on the switch, freeing it up
to work normally.  Once that was fixed, the device had no problem reading
its flash.  Dunno what was happening, and why it didn't cause other issues,
but now the radio powers on with no issue and all interfaces come up after
a second or two :D

     The issue of the daughtercards is a little more troublesome.  I hooked
one of them up to a spec-an and set it to TX a tone that I could move
around from GNU Radio.  What I found was that below ~1.2 GHz I get images
of the tone all through the radio's bandwidth.  Above 1.2 GHz and things
look as expected (just the one tone).  I was also noticing that the 90-100
MHz range (FM radio here in the US) was getting overlapped with what
appeared to be TV or cell signals.  Those should in no way be in the 100
MHz region where I am.  Tuning the radio around showed that I was seeing
loads of signals from much higher frequencies aliasing in.  So, for fun I
attached a 100 MHz low pass I got from an Analog Devices class, and that
knocked out the images I was seeing in the FM band.  But, now moving down
to ~ 50 MHz I was seeing images of the FM radio band.  My assumption here
is that the filters on the daughterboards are hosed.  Perhaps somebody fed
in a really strong signal and destroyed them?  Are there two sets of
filters on the WBX?  One for below 1.2 GHz and one for above?  That would
help explain why my TX tests work > 1.2 GHz.  Would the 100 MHz low pass
filter test prove that the mainboard isn't the issue?  My fear previously
was that the ADC's and/or DAC's were broken.  Not sure if that's still a
possibility.  If it is, can you suggest tests I could run using a spec-an
and attenuators/terminators?

Thanks for the help!

-Dave

On Mon, Aug 15, 2022 at 10:53 AM Dave NotTelling <dmp250net@gmail.com>
wrote:

> Marcus,
>
>      Thanks for the link!  I didn't have any terminators on hand over the
> weekend, but will try that today.  Appreciate the suggestion!
>
> -Dave
>
> On Mon, Aug 15, 2022 at 10:51 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-08-15 10:47, Dave NotTelling wrote:
>>
>> Marcus,
>>
>>      It was crazy cheap (~$650), and reflashing on power up isn't hard
>> :)  It's a fun toy for learning about RFNoC and just FPGA fun in general.
>> Came with two 40 MHz WBX boards.  Is there a part number for the flash?  Is
>> it something that can be popped off with a hot air gun?  I think it did
>> come up on its own once.  Curious if it just needs to be reflowed.
>>
>> The schematics are here:
>>
>> https://files.ettus.com/schematics/x300/
>>
>>
>>
>>      It does seem to have a working EEPROM since I can change the IP
>> address.
>>
>>      I also noticed that both WBX boards have nasty spur looking tones
>> for several hundred MHz in the lower range of the WBX.  Is it possible that
>> there are issues on the motherboard that could cause those issues?  I have
>> a proper power supply arriving today to replace the ATX computer supply I
>> have been testing with (12 Volt)
>>
>> Could very well be clock issues or other things in the standard
>> daughtercard interface that are unexpectedly noisy.
>>
>> Do they go away if you terminate the inputs?
>>
>>
>>
>> Thanks!
>>
>> -Dave
>>
>> On Mon, Aug 15, 2022 at 10:41 AM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 2022-08-15 10:34, Dave NotTelling wrote:
>>> > Apologies if this is a repost.  I don't think my original message made
>>> > it to the list for some reason.
>>> >
>>> > I recently got my hands on a used x310.  It seems to work well, but
>>> > for some reason will not boot on its own.  Vivado hardware manager
>>> > shows the device as not being programmed, and the network interfaces
>>> > don't come up (no lights on the SFPs). If I reflash the device with
>>> > Vivado it will come up and work as expected.  Is there a way to test
>>> > the flash chip to see if it's alive?  Running uhd_image_loader seems
>>> > to work fine, but the device still will not come up automatically.
>>> >
>>> > Thanks!
>>> >
>>> > -Dave
>>> >
>>> >
>>> This does sound like a FLASH issue.  I hope you didn't pay that much for
>>> it...
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>

--0000000000006eca0e05e66358c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus,<div><br></div><div>=C2=A0 =C2=A0 =C2=A0I figured o=
ut the flash issue!=C2=A0 It was related to the power switch issue.=C2=A0 T=
here are four screws that go into the top and bottom of the front panel of =
the chassis.=C2=A0 Two from the bottom, two from the top.=C2=A0 One of the =
screws in the bottom was either too long, or not supposed to be there.=C2=
=A0 The one closest to the power switch was actually pushing on the bottom =
of the board.=C2=A0 Removing that screw released pressure on the switch, fr=
eeing it up to work normally.=C2=A0 Once that was fixed, the device had no =
problem reading its flash.=C2=A0 Dunno what was happening, and why it didn&=
#39;t cause other issues, but now the radio powers on with no issue and all=
 interfaces come up after a second or two :D</div><div><br></div><div>=C2=
=A0 =C2=A0 =C2=A0The issue of the daughtercards=C2=A0is a little more troub=
lesome.=C2=A0 I hooked one of them up to a spec-an and set it to TX a tone =
that I could move around from GNU Radio.=C2=A0 What I found was that below =
~1.2 GHz I get images of the tone all through the radio&#39;s bandwidth.=C2=
=A0 Above 1.2 GHz and things look as expected (just the one tone).=C2=A0 I =
was also noticing that the 90-100 MHz range (FM radio here in the US) was g=
etting overlapped with what appeared to be TV or cell signals.=C2=A0 Those =
should in no way be in the 100 MHz region where I am.=C2=A0 Tuning the radi=
o around showed that I was seeing loads of signals from much higher frequen=
cies aliasing in.=C2=A0 So, for fun I attached a 100 MHz low pass I got fro=
m an Analog Devices class, and that knocked out the images I was seeing in =
the FM band.=C2=A0 But, now moving down to ~ 50 MHz I was seeing images of =
the FM radio band.=C2=A0 My assumption here is that the filters on the daug=
hterboards are hosed.=C2=A0 Perhaps somebody fed in a really strong signal =
and destroyed them?=C2=A0 Are there two sets of filters on the WBX?=C2=A0 O=
ne for below 1.2 GHz and one for above?=C2=A0 That would help explain why m=
y TX tests work &gt; 1.2 GHz.=C2=A0 Would the 100 MHz low pass filter test =
prove that the mainboard isn&#39;t the issue?=C2=A0 My fear previously was =
that the ADC&#39;s and/or DAC&#39;s were broken.=C2=A0 Not sure if that&#39=
;s still a possibility.=C2=A0 If it is, can you suggest tests I could run u=
sing a spec-an and attenuators/terminators?</div><div><br></div><div>Thanks=
 for the help!</div><div><br></div><div>-Dave</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at =
10:53 AM Dave NotTelling &lt;<a href=3D"mailto:dmp250net@gmail.com">dmp250n=
et@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Marcus,</div><div><br></div><div>=C2=A0=
=C2=A0=C2=A0=C2=A0 Thanks for the link!=C2=A0 I didn&#39;t have any termina=
tors on hand over the weekend, but will try that today.=C2=A0 Appreciate th=
e suggestion!</div><div><br></div><div>-Dave<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022=
 at 10:51 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-08-15 10:47, Dave NotTelling
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 It was crazy cheap (~$650), and refla=
shing on power up
          isn&#39;t hard :)=C2=A0 It&#39;s a fun toy for learning about RFN=
oC and
          just FPGA fun in general.=C2=A0 Came with two 40 MHz WBX boards.=
=C2=A0
          Is there a part number for the flash?=C2=A0 Is it something that
          can be popped off with a hot air gun?=C2=A0 I think it did come u=
p
          on its own once.=C2=A0 Curious if it just needs to be reflowed.</=
div>
      </div>
    </blockquote>
    The schematics are here:<br>
    <br>
    <a href=3D"https://files.ettus.com/schematics/x300/" target=3D"_blank">=
https://files.ettus.com/schematics/x300/</a><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 It does seem to have a working EEPROM=
 since I can
          change the IP address.</div>
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 I also noticed that both WBX boards h=
ave nasty spur
          looking tones for several hundred MHz in the lower range of
          the WBX.=C2=A0 Is it possible that there are issues on the
          motherboard that could cause those issues?=C2=A0 I have a proper
          power supply arriving today to replace the ATX computer supply
          I have been testing with (12 Volt)<br>
        </div>
      </div>
    </blockquote>
    Could very well be clock issues or other things in the standard
    daughtercard interface that are unexpectedly noisy.<br>
    <br>
    Do they go away if you terminate the inputs?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks!</div>
        <div><br>
        </div>
        <div>-Dave<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at 10:41
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2022-08-15 10:34, Dave NotTelling wrote:<br>
          &gt; Apologies if this is a repost.=C2=A0 I don&#39;t think my or=
iginal
          message made <br>
          &gt; it to the list for some reason.<br>
          &gt;<br>
          &gt; I recently got my hands on a used x310.=C2=A0 It seems to wo=
rk
          well, but <br>
          &gt; for some reason will not boot on its own.=C2=A0 Vivado
          hardware manager <br>
          &gt; shows the device as not being programmed, and the network
          interfaces <br>
          &gt; don&#39;t come up (no lights on the SFPs). If I reflash the
          device with <br>
          &gt; Vivado it will come up and work as expected.=C2=A0 Is there =
a
          way to test <br>
          &gt; the flash chip to see if it&#39;s alive?=C2=A0 Running
          uhd_image_loader seems <br>
          &gt; to work fine, but the device still will not come up
          automatically.<br>
          &gt;<br>
          &gt; Thanks!<br>
          &gt;<br>
          &gt; -Dave<br>
          &gt;<br>
          &gt;<br>
          This does sound like a FLASH issue.=C2=A0 I hope you didn&#39;t p=
ay
          that much for <br>
          it...<br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>

--0000000000006eca0e05e66358c4--

--===============5038026478588080242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5038026478588080242==--

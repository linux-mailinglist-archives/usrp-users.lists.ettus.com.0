Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA0A5965A2
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 00:49:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEEA2381526
	for <lists+usrp-users@lfdr.de>; Tue, 16 Aug 2022 18:49:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660690196; bh=JKC2JTDoyHZidvNOJEs8UZOLljrBmQ9f6PUjRxcOR3o=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=R7h1jl9VZs3dLgY4lXRGcJQiOiwmmapbrpddHJy089/hFQeNmZrtY9HLxPXXgNV+C
	 Fa4jo137vib1uU3kFtW4WnJaqQhASB7AnV4W8jxvQDGzUNpsZqSliLD+NnGIceJEkk
	 cnek35OsFma0H9cr5xwC+PvlIc3IA87z0gPAlshuxyAPveP35eiD3pggWa//MaO/w0
	 ZVnzw7BsvPqJLyPzdWdkthtzO5BeF0j2FRiDrY5OHH7GRRYgw6WCSdixzkAoOr74t6
	 XyRLDJcPVLgEsgvPFSu/Fcj9W13b5qBW1loraTNg+i6L5BWXFkQYRqwCa/rAO30eol
	 S+xJoB361kb+g==
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 35A09381526
	for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 18:48:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OVAySXwC";
	dkim-atps=neutral
Received: by mail-io1-f41.google.com with SMTP id h78so4285713iof.13
        for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 15:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=TPDwyAyQkYf9yi20h99188yt7KIwNb5vw7k7c6fz2d0=;
        b=OVAySXwCMQE+UfczbfsG062waOJRkLHCbcx33Xvb7l1styjwi3YsgZwb++UD7H/L8L
         rz+CY4Y/nzC4xE9n176sEx2IpbQ1JsSu9jPSiZc1J8boD8kvkCOOXdk7Ys6X7cT7fQcB
         ekcO/lXKOBdIWHg85+xCyhxr796dKrerEhR1W/oaJGql4qP08HWvnDy17PoCqjOBrZku
         Vslsp4gbLBpA47HLNTTXtP4LKwVkpuyW8WWyj+ZCSC7CUsV+Kh+7l033XnQmlVJyfWEA
         Dyiz93pEtV85XOvpln0u4JVgrEVbEEwX6CwYxVQsFxdIptoRdPmMY/lFHW5PD4cgG23M
         cGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=TPDwyAyQkYf9yi20h99188yt7KIwNb5vw7k7c6fz2d0=;
        b=rfxpYkCIi4VgI3az/vYYIrPJ4h8OzrbuC5po5l9LGdpFwCoo43Aau4LjGVgxi9Gog7
         Jwqqysp2Ucq2o2vfykfltxBSnoktlmgNNUyAcT2cz1FR3c7A2veLdmGDSVF9L+pc1EjW
         voeVG5hF/OyU5bFxATMbwhh+2B84AFMixiskSTusVriGS7xSjxSL6oPHj3GkpMuyTFYm
         jgcNhMyWXTIf8jk4N+6CaNZaMVEa+uwZtzFC+3ipv7UZA4gTglYcwmMZIk8ufaQok6W6
         2VN/fnphs85sHz2s1EH3Ayv+2VGit7gmxBvYpMk0HQ2/pcZpsjs6er/IlVzilQXrdtzL
         Fn8Q==
X-Gm-Message-State: ACgBeo1c47VrWWT2DtvlvhPpFZGrDi1MixyJ6oc7pr+ITrcHWbHl/xZh
	i3pCnVQfmbH5ahFltx0lhz79v18/5uQ3Uu/4xycToZSN0Z0=
X-Google-Smtp-Source: AA6agR7TqDZO8F4FeKVEHtItNv9mcKTsSt5eXrKQ5Vb39PkXpAtVYRJLIVJi9vgiNssvF1mB40dJ9rbCCe8iGMVBgr4=
X-Received: by 2002:a02:a909:0:b0:343:63d6:6707 with SMTP id
 n9-20020a02a909000000b0034363d66707mr9687298jam.305.1660690121066; Tue, 16
 Aug 2022 15:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
 <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com> <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
 <9c6f887d-4c73-d831-d287-702e037de7f3@gmail.com> <CAK6GVuOweUQEhvSwckf4ihNCP1Bd=D+pQwy9ndMtg5m5Lr9GyA@mail.gmail.com>
 <CAK6GVuMz4=t7QVmpZVoWq9R5j-ufkU6MCbzHSicrRffpcSJvvQ@mail.gmail.com>
In-Reply-To: <CAK6GVuMz4=t7QVmpZVoWq9R5j-ufkU6MCbzHSicrRffpcSJvvQ@mail.gmail.com>
From: Dave NotTelling <dmp250net@gmail.com>
Date: Tue, 16 Aug 2022 18:48:30 -0400
Message-ID: <CAK6GVuMixVQGcJWO2N09onOtUicKgprgSFcXC47OmFLCYXgc9A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: AIBHDN7NTX4T62ATLZN244K7SKKXB6LI
X-Message-ID-Hash: AIBHDN7NTX4T62ATLZN244K7SKKXB6LI
X-MailFrom: dmp250net@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AIBHDN7NTX4T62ATLZN244K7SKKXB6LI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8244115594082669674=="

--===============8244115594082669674==
Content-Type: multipart/alternative; boundary="000000000000bf940005e6638c9a"

--000000000000bf940005e6638c9a
Content-Type: text/plain; charset="UTF-8"

Correction, the point at which the images go away is ~ 900 MHz.  Below is a
link to a video where I sweep from ~ 40 MHz up to 2.4 GHz.  Note that the
images are only present in the beginning.  The X310 is cabled directly to
my spec-an with no additional attenuation.

https://youtu.be/jqUlK4WWvoQ

On Tue, Aug 16, 2022 at 6:33 PM Dave NotTelling <dmp250net@gmail.com> wrote:

> Marcus,
>
>      I figured out the flash issue!  It was related to the power switch
> issue.  There are four screws that go into the top and bottom of the front
> panel of the chassis.  Two from the bottom, two from the top.  One of the
> screws in the bottom was either too long, or not supposed to be there.  The
> one closest to the power switch was actually pushing on the bottom of the
> board.  Removing that screw released pressure on the switch, freeing it up
> to work normally.  Once that was fixed, the device had no problem reading
> its flash.  Dunno what was happening, and why it didn't cause other issues,
> but now the radio powers on with no issue and all interfaces come up after
> a second or two :D
>
>      The issue of the daughtercards is a little more troublesome.  I
> hooked one of them up to a spec-an and set it to TX a tone that I could
> move around from GNU Radio.  What I found was that below ~1.2 GHz I get
> images of the tone all through the radio's bandwidth.  Above 1.2 GHz and
> things look as expected (just the one tone).  I was also noticing that the
> 90-100 MHz range (FM radio here in the US) was getting overlapped with what
> appeared to be TV or cell signals.  Those should in no way be in the 100
> MHz region where I am.  Tuning the radio around showed that I was seeing
> loads of signals from much higher frequencies aliasing in.  So, for fun I
> attached a 100 MHz low pass I got from an Analog Devices class, and that
> knocked out the images I was seeing in the FM band.  But, now moving down
> to ~ 50 MHz I was seeing images of the FM radio band.  My assumption here
> is that the filters on the daughterboards are hosed.  Perhaps somebody fed
> in a really strong signal and destroyed them?  Are there two sets of
> filters on the WBX?  One for below 1.2 GHz and one for above?  That would
> help explain why my TX tests work > 1.2 GHz.  Would the 100 MHz low pass
> filter test prove that the mainboard isn't the issue?  My fear previously
> was that the ADC's and/or DAC's were broken.  Not sure if that's still a
> possibility.  If it is, can you suggest tests I could run using a spec-an
> and attenuators/terminators?
>
> Thanks for the help!
>
> -Dave
>
> On Mon, Aug 15, 2022 at 10:53 AM Dave NotTelling <dmp250net@gmail.com>
> wrote:
>
>> Marcus,
>>
>>      Thanks for the link!  I didn't have any terminators on hand over the
>> weekend, but will try that today.  Appreciate the suggestion!
>>
>> -Dave
>>
>> On Mon, Aug 15, 2022 at 10:51 AM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 2022-08-15 10:47, Dave NotTelling wrote:
>>>
>>> Marcus,
>>>
>>>      It was crazy cheap (~$650), and reflashing on power up isn't hard
>>> :)  It's a fun toy for learning about RFNoC and just FPGA fun in general.
>>> Came with two 40 MHz WBX boards.  Is there a part number for the flash?  Is
>>> it something that can be popped off with a hot air gun?  I think it did
>>> come up on its own once.  Curious if it just needs to be reflowed.
>>>
>>> The schematics are here:
>>>
>>> https://files.ettus.com/schematics/x300/
>>>
>>>
>>>
>>>      It does seem to have a working EEPROM since I can change the IP
>>> address.
>>>
>>>      I also noticed that both WBX boards have nasty spur looking tones
>>> for several hundred MHz in the lower range of the WBX.  Is it possible that
>>> there are issues on the motherboard that could cause those issues?  I have
>>> a proper power supply arriving today to replace the ATX computer supply I
>>> have been testing with (12 Volt)
>>>
>>> Could very well be clock issues or other things in the standard
>>> daughtercard interface that are unexpectedly noisy.
>>>
>>> Do they go away if you terminate the inputs?
>>>
>>>
>>>
>>> Thanks!
>>>
>>> -Dave
>>>
>>> On Mon, Aug 15, 2022 at 10:41 AM Marcus D. Leech <
>>> patchvonbraun@gmail.com> wrote:
>>>
>>>> On 2022-08-15 10:34, Dave NotTelling wrote:
>>>> > Apologies if this is a repost.  I don't think my original message
>>>> made
>>>> > it to the list for some reason.
>>>> >
>>>> > I recently got my hands on a used x310.  It seems to work well, but
>>>> > for some reason will not boot on its own.  Vivado hardware manager
>>>> > shows the device as not being programmed, and the network interfaces
>>>> > don't come up (no lights on the SFPs). If I reflash the device with
>>>> > Vivado it will come up and work as expected.  Is there a way to test
>>>> > the flash chip to see if it's alive?  Running uhd_image_loader seems
>>>> > to work fine, but the device still will not come up automatically.
>>>> >
>>>> > Thanks!
>>>> >
>>>> > -Dave
>>>> >
>>>> >
>>>> This does sound like a FLASH issue.  I hope you didn't pay that much
>>>> for
>>>> it...
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>

--000000000000bf940005e6638c9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Correction, the point at which the images go away is ~ 900=
 MHz.=C2=A0 Below is a link to a video where I sweep from ~ 40 MHz up to 2.=
4 GHz.=C2=A0 Note that the images are only present in the beginning.=C2=A0 =
The X310 is cabled directly to my spec-an with no additional attenuation.<d=
iv><br></div><div><a href=3D"https://youtu.be/jqUlK4WWvoQ">https://youtu.be=
/jqUlK4WWvoQ</a><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Aug 16, 2022 at 6:33 PM Dave NotTelling &=
lt;<a href=3D"mailto:dmp250net@gmail.com">dmp250net@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Marcus,<div><br></div><div>=C2=A0 =C2=A0 =C2=A0I figured out the flash i=
ssue!=C2=A0 It was related to the power switch issue.=C2=A0 There are four =
screws that go into the top and bottom of the front panel of the chassis.=
=C2=A0 Two from the bottom, two from the top.=C2=A0 One of the screws in th=
e bottom was either too long, or not supposed to be there.=C2=A0 The one cl=
osest to the power switch was actually pushing on the bottom of the board.=
=C2=A0 Removing that screw released pressure on the switch, freeing it up t=
o work normally.=C2=A0 Once that was fixed, the device had no problem readi=
ng its flash.=C2=A0 Dunno what was happening, and why it didn&#39;t cause o=
ther issues, but now the radio powers on with no issue and all interfaces c=
ome up after a second or two :D</div><div><br></div><div>=C2=A0 =C2=A0 =C2=
=A0The issue of the daughtercards=C2=A0is a little more troublesome.=C2=A0 =
I hooked one of them up to a spec-an and set it to TX a tone that I could m=
ove around from GNU Radio.=C2=A0 What I found was that below ~1.2 GHz I get=
 images of the tone all through the radio&#39;s bandwidth.=C2=A0 Above 1.2 =
GHz and things look as expected (just the one tone).=C2=A0 I was also notic=
ing that the 90-100 MHz range (FM radio here in the US) was getting overlap=
ped with what appeared to be TV or cell signals.=C2=A0 Those should in no w=
ay be in the 100 MHz region where I am.=C2=A0 Tuning the radio around showe=
d that I was seeing loads of signals from much higher frequencies aliasing =
in.=C2=A0 So, for fun I attached a 100 MHz low pass I got from an Analog De=
vices class, and that knocked out the images I was seeing in the FM band.=
=C2=A0 But, now moving down to ~ 50 MHz I was seeing images of the FM radio=
 band.=C2=A0 My assumption here is that the filters on the daughterboards a=
re hosed.=C2=A0 Perhaps somebody fed in a really strong signal and destroye=
d them?=C2=A0 Are there two sets of filters on the WBX?=C2=A0 One for below=
 1.2 GHz and one for above?=C2=A0 That would help explain why my TX tests w=
ork &gt; 1.2 GHz.=C2=A0 Would the 100 MHz low pass filter test prove that t=
he mainboard isn&#39;t the issue?=C2=A0 My fear previously was that the ADC=
&#39;s and/or DAC&#39;s were broken.=C2=A0 Not sure if that&#39;s still a p=
ossibility.=C2=A0 If it is, can you suggest tests I could run using a spec-=
an and attenuators/terminators?</div><div><br></div><div>Thanks for the hel=
p!</div><div><br></div><div>-Dave</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at 10:53 AM Dav=
e NotTelling &lt;<a href=3D"mailto:dmp250net@gmail.com" target=3D"_blank">d=
mp250net@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Marcus,</div><div><br></div><div>=
=C2=A0=C2=A0=C2=A0=C2=A0 Thanks for the link!=C2=A0 I didn&#39;t have any t=
erminators on hand over the weekend, but will try that today.=C2=A0 Appreci=
ate the suggestion!</div><div><br></div><div>-Dave<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15,=
 2022 at 10:51 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
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
</blockquote></div>

--000000000000bf940005e6638c9a--

--===============8244115594082669674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8244115594082669674==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CA744ECF8
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 19:56:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40FEC3848E1
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 13:56:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="PYFSS8zs";
	dkim-atps=neutral
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E5B4A384551
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 13:55:56 -0500 (EST)
Received: by mail-oi1-f170.google.com with SMTP id t19so19662954oij.1
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cB80TiylDXSu45cOQQ/oktuWUNxnRr9hma79sZQnJmU=;
        b=PYFSS8zsB7odAzT/JubiuwSvMhsbPV1OGmRRvPSyHKjPnHhcWnTmcT8JeZ51VeYwjv
         eDDWCz6YIYcp5PJN4bZoESrNr0lNi9ZpsCpUNm/T50CTokAqgk1gnxrest6XA0FYFUcz
         Ezn4HIwKIiVRPSRSGIXDk8hiuZqLBJr3dxBrVN6TFqkdkSaC1kzmmTpao8sGFn+qQOTK
         HKEvQvc/42yu4zTtUM9DjhibOHW7jdQY0Lx4khrCPAW239wujxL9iYuoCDgv19d2XKMU
         o6MdEb0H7GI4Sszx9ORj8/Dhtmkd8Ee3OE4UUcFUg176JdUwz4wffhDBH3koD4QmzWjt
         tjUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cB80TiylDXSu45cOQQ/oktuWUNxnRr9hma79sZQnJmU=;
        b=vi0MpF1n+Fo5mG40W+BqqLgqS6mYFiomE/XJfQ8IPMMlDvcA+WEZqH9c7xeCDG4nl6
         4m7J58p3DfVy4ROj7MCYqY+UAhNlEMkMvvhTRqonar3YNv+uMM4/lkJVxuwF2WAKuZWa
         YKFz0xiQAOXT8pI/BV4R09BjvUwVN+BkS9tQ05jdsNRvpZxGuc3Fh455p8zLhA/m6exL
         a5CIi/e1uzgeYdp5lF72JhXRdLDrOn/rpiNIXTPbXo+W0/PRGgQo7N3Ceb1VeNp7JLxl
         x8EhDrYtiglfE/mytC8Pf4nESFciqEBQDmJtIXeP5Ev06V2Yj3rE/y8grWMGIkp/r85L
         HDlw==
X-Gm-Message-State: AOAM530Q+AD9bU5sGnnYfeCVCiWLxmpqKX/Q039WOCnbuSvTk45P+elN
	mHTDzqHeIuw2a+314XYlmxTjzTELQat2xdf8d/yDe4o44ic=
X-Google-Smtp-Source: ABdhPJzRaRi8J4j7WNv7rZaIu9KJkaPJd8oMAEUcJ8XVFL0btJPkZJBkR0jaJ4wlqam4yJqXk3BX3M5QezIopu+Jn/A=
X-Received: by 2002:aca:5841:: with SMTP id m62mr28744885oib.150.1636743356112;
 Fri, 12 Nov 2021 10:55:56 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com> <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com> <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
 <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com> <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
 <09b6ddf3-81ca-b6fc-491c-66b7bfaf83d7@gmail.com> <CAB__hTTGkMcTz4a7ht_Uhb=V3o8EsC8hO5acqfwKkNYa46rsxg@mail.gmail.com>
 <678493ce-f272-2cd9-82e8-a3ceb184d633@gmail.com> <CAB__hTS41LC3s6HJhH3eKDDjyXtyY3e0fB1Qv19dAGwpKDaw-A@mail.gmail.com>
In-Reply-To: <CAB__hTS41LC3s6HJhH3eKDDjyXtyY3e0fB1Qv19dAGwpKDaw-A@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 13:55:45 -0500
Message-ID: <CAB__hTQOESBO+B_=ZxRD2x84qbkWK6HCBewmGSkG7HPFnv1j0w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: DHITBZCC36F6HTRAAL4NPBOJOAHF57YE
X-Message-ID-Hash: DHITBZCC36F6HTRAAL4NPBOJOAHF57YE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHITBZCC36F6HTRAAL4NPBOJOAHF57YE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4713997651123335124=="

--===============4713997651123335124==
Content-Type: multipart/alternative; boundary="000000000000548ef205d09c02d8"

--000000000000548ef205d09c02d8
Content-Type: text/plain; charset="UTF-8"

By the way, I just removed my working SD card from the E310 and inserted it
in my host (Ubuntu 20.04) SD card reader and issued the "umount" commands.
Nothing else.  When I reinserted into the E310, boot issue appears (fsck
fails for /data and thus won't mount and puts me in some maintenance mode).
Rob

On Fri, Nov 12, 2021 at 1:49 PM Rob Kossler <rkossler@nd.edu> wrote:

> On Fri, Nov 12, 2021 at 1:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-11-12 13:14, Rob Kossler wrote:
>>
>>
>>>
>> I will try soon, but such experiments are "expensive" because when it
>> fails I have to re-burn the file system and then reconfigure stuff
>> afterwords since I don't know how to recover from the issue.  My guess was
>> that either the mount or the eject was writing a date (perhaps an
>> "accessed" date in some metadata) that was much in the future relative to
>> the file system "Aug 6 2021" date that it gets and somehow this date
>> mismatch was causing the fsck failure.  But I am not knowledgeable on
>> this.
>>
>> Regarding your NTPD comment, perhaps it isn't accessing any RTC.  Perhaps
>> it is storing the time in the file system somewhere such that it can
>> access it on next boot?
>>
>> Your comments indicated the resulting time after reboot in this case was
>> *correct*, which would mean that something would have to be "keeping time"
>> across the
>>   reboot.  Or did you mean just that the time after reboot, without the
>> network cable connected, but with NTPD turned on, was "closer" to correct
>> than without?
>>
>
> You're right. I just meant that it was today's date on reboot.  I didn't
> check to see if it was actually keeping time in between.  It would have
> only been a few seconds anyway.
>

--000000000000548ef205d09c02d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">By the way, I just removed my working SD card from the E31=
0 and inserted it in my host (Ubuntu 20.04) SD card reader and issued the &=
quot;umount&quot; commands.=C2=A0 Nothing else.=C2=A0 When I reinserted int=
o the E310, boot issue appears (fsck fails for /data and thus won&#39;t mou=
nt and puts me in some maintenance mode).<div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 12, 2021=
 at 1:49 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Nov 12, 2021 at 1:17 PM Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><div><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-12 13:14, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I will try soon, but such experiments are &quot;expensive&qu=
ot;
            because when it fails I have to re-burn the file system and
            then reconfigure stuff afterwords=C2=A0since I don&#39;t know h=
ow to
            recover from the=C2=A0issue.=C2=A0 My guess was that either the=
 mount
            or the eject was writing a date (perhaps an &quot;accessed&quot=
; date
            in some metadata) that was much in the future relative to
            the file system &quot;Aug 6 2021&quot; date that it gets and so=
mehow
            this date mismatch was causing the fsck failure.=C2=A0 But I am
            not knowledgeable on this.=C2=A0=C2=A0</div>
          <div><br>
          </div>
          <div>Regarding your NTPD comment, perhaps it isn&#39;t accessing
            any RTC.=C2=A0 Perhaps it is storing the time in the file syste=
m
            somewhere such that it can access=C2=A0it on next boot?</div>
        </div>
      </div>
    </blockquote>
    Your comments indicated the resulting time after reboot in this case
    was *correct*, which would mean that something would have to be
    &quot;keeping time&quot; across the<br>
    =C2=A0 reboot.=C2=A0 Or did you mean just that the time after reboot, w=
ithout
    the network cable connected, but with NTPD turned on, was &quot;closer&=
quot;
    to correct than without?<br></div></blockquote><div><br></div><div>You&=
#39;re right. I just meant that it was today&#39;s date on reboot.=C2=A0 I =
didn&#39;t check to see if it was actually keeping time in between.=C2=A0 I=
t would have only been a few seconds anyway.=C2=A0</div></div></div>
</div>
</blockquote></div>

--000000000000548ef205d09c02d8--

--===============4713997651123335124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4713997651123335124==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0354B3DF4F2
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 20:48:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16F24384BC8
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 14:48:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O3NfrDN7";
	dkim-atps=neutral
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id B35D238462D
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 14:47:39 -0400 (EDT)
Received: by mail-oi1-f171.google.com with SMTP id u10so29266804oiw.4
        for <usrp-users@lists.ettus.com>; Tue, 03 Aug 2021 11:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:date:message-id:subject:from:to:in-reply-to:references
         :user-agent;
        bh=zEC3kVmkZD8a8Twox7P+Io0PtZatfvVtQuR14hkrTig=;
        b=O3NfrDN7YgYJT+RHUFkhdnt98YWKj9eMIEh2P6JHJJfVd5xGEmH6KnHTdIQBkYVUdi
         vLjdC0+l334xs3blbKUxfv95xxfu61FiiKnOUCTEo3mp3fsoMwkNgMHYDegfCJqr21dN
         jMCr9s1UdMEzpr7cPY4uhjSvXgQNvUFbUXWngvTYGb5My6OKrL2yUufbny6lNYKPoT1x
         eBwL/wE/KQ+HPzYNcEWm/QZBVW6hz9gI35/tUKWGrk3j7dwMQu+jFcr2bKwR0zdCBklF
         u+6r8x4WT0fGqnAF9iqpywkKGNB410ug29VrzCdBFoGcFqupFAnrHpYW5qzqHGGgJmkZ
         DcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :in-reply-to:references:user-agent;
        bh=zEC3kVmkZD8a8Twox7P+Io0PtZatfvVtQuR14hkrTig=;
        b=Xcdf1w0ALh25hiUZdeIipmIFnIf70urf7lq+ZNYieEmuDU8JU6ttzwUj1c+bALutYT
         dEAJB+L9o2Iz8cYCxQ05d/kjyrfBVeNJxbX3a5FpdWQvTl800rKbEy1eb53/a1PdWh6A
         4k/wVIz2onzUH25rI2acXlM+EGnI3o4QkWpvzN1jlj0lQYzv7Gjk/uxuyrrvEasN2ln3
         omJqHcJWLBNWLBG/aUrjJCkIX8NXjwoTLiMYmD9qEsKJEohwts4y+hXHLVe708NsmOiC
         7YlXE5LN31ltSyzgD/929zrq95IlB857Z+MWh16IBZ0u+furjZtD5Y7KU2wFmvtqKoYu
         sc3Q==
X-Gm-Message-State: AOAM5333logTN/3mD8PvsAv51Z+6r/qS+/vkAewVJKlWEI4poe2NRBNB
	ItFUsBourMe6kKTUsxBg3mA=
X-Google-Smtp-Source: ABdhPJz/BMFPK8SAYvBDzAF/AQdSN8a+Vh4Suk9iHq762tTFsXcOjNE+CvE/anVr5DIFTtRvoxtM7w==
X-Received: by 2002:a05:6808:159a:: with SMTP id t26mr4074200oiw.102.1628016458982;
        Tue, 03 Aug 2021 11:47:38 -0700 (PDT)
Received: from [192.168.1.3] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id f23sm463172oou.5.2021.08.03.11.47.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 11:47:38 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 03 Aug 2021 13:47:27 -0500
Message-ID: <Mailbird-5039ed21-6f5c-485c-b20b-920210f47451@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "Marcin Wachowiak" <marcin.r.wachowiak@gmail.com>,
 "McNulty, Mike (Assoc) via USRP-users" <usrp-users@lists.ettus.com>
In-Reply-To: <003401d78883$73f1aab0$5bd50010$@gmail.com>
References: <003401d78883$73f1aab0$5bd50010$@gmail.com>
User-Agent: Mailbird/2.9.37.0
X-Mailbird-ID: Mailbird-5039ed21-6f5c-485c-b20b-920210f47451@gmail.com
Message-ID-Hash: VGQMB47SCSNRHROS2WZLBBGQXQ3WFWEP
X-Message-ID-Hash: VGQMB47SCSNRHROS2WZLBBGQXQ3WFWEP
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: One RX channel of B210 presents distorted signal from splitter
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VGQMB47SCSNRHROS2WZLBBGQXQ3WFWEP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7782672987380618182=="

--===============7782672987380618182==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_13161088.797861521985"

------=_NextPart_13161088.797861521985
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Marcin, we are using the B210 in an application that requires a high degree=
 of coherency between the two Rx inputs. We rarely change the data capture =
from 20MSPS, unlike your case, but I have completed analysis of 260 1-Gb da=
ta files and have not seen anything like what I saw in your videos. When lo=
oking at the videos, my first instinct was that you were picking up WiFi or=
 Bluetooth interference on one channel. Perhaps you are well past such cons=
iderations, but I thought I'd give my 30-second impression.=C2=A0
-page heller

On 8/3/2021 1:20:57 PM, marcin.r.wachowiak@gmail.com <marcin.r.wachowiak@gm=
ail.com> wrote:
Hello,
Thank You for the interest in my problem.
Yes I am feeding the signal into both RX2 ports. I have just repeated the s=
ame thing symmetrically for TX/RX ports and the distortion was present agai=
n.

Kind regard,
Marcin Wachowiak

-----Wiadomo=C5=9B=C4=87 oryginalna-----
Od: usrp-users-request@lists.ettus.com
Wys=C5=82ano: Tuesday, 3 August 2021 19:48
Do: usrp-users@lists.ettus.com
Temat: USRP-users Digest, Vol 132, Issue 8

Send USRP-users mailing list submissions to
usrp-users@lists.ettus.com

To subscribe or unsubscribe via email, send a message with subject or body =
'help' to
usrp-users-request@lists.ettus.com

You can reach the person managing the list at
usrp-users-owner@lists.ettus.com

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of USRP-users digest..."

Today's Topics:

1. Re: Optical SFP+ adapters for N321 (Vladica Sark)
2. Re: One RX channel of B210 presents distorted signal from splitter
(Marcus D. Leech)


----------------------------------------------------------------------

Message: 1
Date: Tue, 3 Aug 2021 17:39:36 +0200
From: Vladica Sark
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
To: Michael Dickens
Cc: "usrp-users@lists.ettus.com"
Message-ID:
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed

Hi Michael,

Thanks for informing us about this. I would be happy to test it. I am in th=
e moment on vacation, but next week I will find some time to test it.

Best regards,
Vladica


On 03.08.21 17:17, Michael Dickens wrote:
> Hi Vladica & the USRP community - For those of you who have White
> Rabbit equipment, you can download brand new hot off the buildbots WR
> FPGA images (WX and XQ) for your N3x0 or N32x here <
> https://drive.google.com/drive/folders/1y-AJA2ZBaHgwyRCiOfatfAyLSX0t1G
> 7l?usp=3Dsharing
>
> G7l?usp=3Dsharing>> . Note that these are for UHD 4.1.0.X -- UHD public
> GIT master; GIT branch UHD-4.1, or 4.1.0.0 or 4.1.0.1 releases. I've
> tested these FPGA images on N310 revision 5 and 7, and N320 (current
> revision); just up through "benchmark_rate" when specifying
> "time_source=3Dsfp0" and multiple channels, both on the USRP and remote
> to a host ... all works fine! Thus, I wanted to get the FPGA images
> out to customers for testing / evaluation ... If you do so, I'd love
> to hear of your successes / issues! - MLD
>
>
> On Tue, Jul 13, 2021 at 2:01 PM Vladica Sark
> > wrote:
>
> Hi Rob,
>
> Thanks for this useful information.
> According to Michael it should be fixed mid/late July 2021, so pretty
> soon. Meanwhile I can only switch back to X310 probably, and see
> if it
> works there.
>
> Let's hope it would be fixed soon.
>
>
> BR,
> Vladica
>
>
> On 12.07.21 17:47, Rob Kossler wrote:
> > Hi Vladica,
> > From the 'changelog', it appears that N321 support began with
> release
> > 3.14. But, at that point I believe that WR was already broken.
> So, I
> > think that there is no solution to your problem other than to
> wait for
> > Ettus to fix the WR issues. However, WR has been broken for a
> while
> > (note user-list posts from last fall Sept & Dec) so I don't
> know when
> > this will be working again.
> > Rob
> >
> >
> > On Wed, Jul 7, 2021 at 10:26 AM Vladica Sark
>
> > >>
> wrote:
> >
> > Hi Michael,
> >
> > I obtained the necessary SFP+ optical adapters and now I am
> trying to
> > put uhd 3.13.1.0 on the N321s in order to use the WR
> synchronization.
> > Unfortunately, when I update the sd card image with 3.13.1.0
> the N321
> > boots but the SFP0 and SFP1 do not go up. When I try to run
> > uhd_find_devices, on a terminal using the USB port it says
> no UHD
> > devices are found.
> >
> > I believe that the right FPGA image should be put on the
> FPGA, but
> > the
> > ways described in Knowledgebase are not working.
> >
> > Is there a way to put the version 3.13.1.0 on the N321? I
> have tried
> > version 4.0.0.0 and it is working fine, but WR is broken.
> >
> > BR,
> > Vladica
> >
> >
> > On 22.06.21 21:31, Michael Dickens wrote:
> > > I'm using primarily FS adapters, cables (single and multi
> mode),
> > and
> > > fiber connectors (to allow multiplexing lanes). The adapters I
> > bought
> > > were "generic" and had to be tweaked using an FS BOX to be
> fully
> > > compatible with Intel or Mellanox NICs. This tweaking
> seems to have
> > > helped a lot with the 100 Gb interface (E810); the 10 Gb
> > interfaces do
> > > not show much benefit to be manufacturer specific --
> though I'm
> > sure
> > > it doesn't hurt! I have not tried a multi-mode to single mode
> > splitter
> > > / joiner, but I'd suppose they do exist & if anybody here
> has had
> > > experience that would be useful to hear about! I hope this is
> > useful!
> > > - MLD
> > >
> > >
> > > On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark
> >
> >
> > >
>
> >>>
> > wrote:
> > >
> > > Hi Michael,
> > >
> > > Thanks for the answer. For now for the data I am using DAC
> > cables,
> > > but
> > > we would need larger distances, i.e. 50+ meters, and for
> > this I would
> > > need fibers for both WR and data.
> > >
> > > Is there also some optical multiplexer for these
> wavelengths, in
> > > order
> > > to use a simplex fiber, for both WR and data?
> > >
> > > BR,
> > > Vladica
> > >
> > > On 22.06.21 15:41, Michael Dickens wrote:
> > > > Hi Vladica - I've tested a variety of fiber adapters and
> > cables
> > > with
> > > > no issues (e.g., ZyXEL, FS, Axcen). The primary keys are
> > to make
> > > sure
> > > > the various related parameters match up between the
> > adapters and
> > > > cables and devices. For example: If the adapter is
> 1490/1310,
> > > then you
> > > > want to make sure the cable is for the same
> wavelengths. Same
> > > for the
> > > > fiber polish and other parameters (single / dual
> fiber ; .
> > Some are
> > > > easier than others, none of this is too difficult
> luckily!
> > > >
> > > > For short distances, a DAC cable will work for all
> of the
> > N320/N321
> > > > SFP interfaces.
> > > >
> > > > At the moment, WR support is being fixed for UHD
> 3.14.0.0 to
> > > current.
> > > > If you -require- WR support -right now- you can use UHD
> > 3.13.1.0
> > > while
> > > > we're working out how to fix WR for newer UHD. We expect
> > the fix
> > > to be
> > > > available to customers sometime in mid/late-July
> (2021); once
> > > the fix
> > > > is determined and verified we will commit it to the
> various
> > > branches
> > > > of the UHD repository, and it will be available in UHD
> > -after- the
> > > > forthcoming 4.1 release. It will be available in the
> > public UHD
> > > > repository for folks to use to patch UHD between
> releases.
> > > >
> > > > I hope this is useful! - MLD
> > > >
> > > >
> > > > On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark
> > >
> >
> >
> >>
> > > >
>
> >
> >
>
> > >>>>
> > > wrote:
> > > >
> > > > Dear all,
> > > >
> > > > I would like to use N321 with WRS 3/18 which
> uses optical
> > > cables. I
> > > > would like to use also for the 10 Gbit SFP1
> optical SFP+
> > > transceiver.
> > > > Do you have some recommended optical SFP+ adapters,
> > duplex and,
> > > > preferably, simplex?
> > > > The idea is to use a duplex monomode fiber, one
> fiber for
> > > the 10 Gbit
> > > > data and one fiber for WRS synchronization.
> > > > They would be connected to 10 Gbit switch or QNAP
> > > Thunderbolt to SFP+
> > > > adapter, so they do not have to be Intel.
> > > >
> > > >
> > > > Best regards,
> > > >
> > > > Vladica
> > > >
> > > > _______________________________________________
> > > > USRP-users mailing list --
> usrp-users@lists.ettus.com
> >
> >
> > >
>
> >
> >>
> > > >
>
> >
> >
> > >
>
> >
> >>>
> > > > To unsubscribe send an email to
> > > usrp-users-leave@lists.ettus.com
>
> >
> >
> > >
>
> >
> >>
> > > >
>
> >
> >
> > >
>
> >
> >>>
> > > >
> > >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
>
> >
> >
> > To unsubscribe send an email to
> usrp-users-leave@lists.ettus.com
>
> >
> >
> >
>

------------------------------

Message: 2
Date: Tue, 03 Aug 2021 13:48:17 -0400
From: "Marcus D. Leech"
Subject: [USRP-users] Re: One RX channel of B210 presents distorted
signal from splitter
To: usrp-users@lists.ettus.com
Message-ID: <61098161.4060405@gmail.com>
Content-Type: multipart/alternative;
boundary=3D"------------040402040901010904020401"

On 08/03/2021 11:08 AM, Marcin Wachowiak wrote:
> Hello,
> The signals provided at the input have quite low power, far below the
> threshold of -20dbm. ( I don't know the exact values but I
> additionally even added a 30dB attenuator for safety) What I also
> found out is that the distortions are dependent more on the setting of
> the RX, TX gain than the value. During live testing I observed the
> this harmonic distortion at one channel only, and after increasing the
> TX or RX gain it disappeared (what is visible in the new videos):
> usrp_b210_strange_harmonic_distoriton.mp4
>
> w?usp=3Ddrive_web>
> usrp_b210_strange_harmonic_distoriton_2.mp4
>
> w?usp=3Ddrive_web>
> Kind regards,
> Marcin Wachowiak
Right because distortion in RF components isn't going to start occurring at=
 a uniform level over each discrete device--there will be variability.

Are you using the same (RX2) antenna inputs in each case? At high gain leve=
ls it doesn't take much to drive things into non-linear operation.


>
> On Mon, 2 Aug 2021 at 18:57,
> > wrote:
>
> Send USRP-users mailing list submissions to
> usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
> usrp-users-request@lists.ettus.com
>
>
> You can reach the person managing the list at
> usrp-users-owner@lists.ettus.com
>
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
> Today's Topics:
>
> 1. Older B100 and associated Daughter cards. (Guy Mengel)
> 2. Re: Older B100 and associated Daughter cards. (Richard Stanley)
> 3. One RX channel of B210 presents distorted signal from splitter
> (Marcin Wachowiak)
> 4. Re: One RX channel of B210 presents distorted signal from
> splitter
> (Marcus D. Leech)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 02 Aug 2021 09:47:18 -0400
> From: Guy Mengel >
> Subject: [USRP-users] Older B100 and associated Daughter cards.
> To: usrp-users@lists.ettus.com
> Message-ID: <823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org
> >
> Content-Type: text/plain; markup=3Dmarkdown
>
> Hi All,
> I am finally going to get started using an older B100 USRP with
> the LFTX, LFRX, WBX daughter boards. I purchased these from a
> well known amateur radio op in January of this year. I had played
> with it for a short time on Ubuntu 18.04 with the older
> unsupported Python2 interface, this was a start. Then the Covid
> Pandemic hit.
> Well, I am now back.
> Are there any users in the group using the B100 USRP with the
> LFTX, LFRX, WBX daughter boards using a newer Ubuntu 20.04 with
> updated Python 3.X with GNURADIO? I wanted to see if there were
> any still using this older SDR. My plans are to experiment with
> it and create a rig to be used at HF and possibly UHF to microwave
> down the road.
>
> I would also like to have pointers too!
>
> Thanks!
> Guy Mengel N1GMM
>
>
> ------------------------------
>
> Message: 2
> Date: Mon, 2 Aug 2021 10:37:14 -0400
> From: Richard Stanley
> >
> Subject: [USRP-users] Re: Older B100 and associated Daughter cards.
> To: Guy Mengel >
> Cc: usrp-users@lists.ettus.com
> Message-ID: <17BFD25F-4714-4789-AB3F-4503A89B25F2@gmail.com
> >
> Content-Type: text/plain; charset=3Dus-ascii
>
> (Resent to include mailing list)
>
> Hi Guy,
>
> I've recently used B100s with the LFRX, BasicRX, and (EOL) TVRX2
> with the latest UHD and GNU Radio 3.8 on Ubuntu 20.04.
>
> A challenge for me with the LFRX/TX and BasicRX/TX was finding the
> correct sub-device specification as they can acquire/transmit an
> IQ pair or real-valued signals. In addition, I required a Hilbert
> transform to convert real-valued samples in baseband to complex
> for some processing in GNU Radio for Rx. There are a lot of
> questions about these daughtercards in the mailing list archive
> and often the questions seem to be about sub-device specification
> and real-valued versus IQ.
>
> Enjoy the B100!
>
> HTH,
> Richard
>
> On Aug 2, 2021, at 09:47, Guy Mengel
> > wrote:
>
> Hi All,
> I am finally going to get started using an older B100 USRP with
> the LFTX, LFRX, WBX daughter boards. I purchased these from a
> well known amateur radio op in January of this year. I had played
> with it for a short time on Ubuntu 18.04 with the older
> unsupported Python2 interface, this was a start. Then the Covid
> Pandemic hit.
> Well, I am now back.
> Are there any users in the group using the B100 USRP with the
> LFTX, LFRX, WBX daughter boards using a newer Ubuntu 20.04 with
> updated Python 3.X with GNURADIO? I wanted to see if there were
> any still using this older SDR. My plans are to experiment with
> it and create a rig to be used at HF and possibly UHF to microwave
> down the road.
>
> I would also like to have pointers too!
>
> Thanks!
> Guy Mengel N1GMM
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> ------------------------------
>
> Message: 3
> Date: Mon, 2 Aug 2021 18:37:08 +0200
> From: Marcin Wachowiak
> >
> Subject: [USRP-users] One RX channel of B210 presents distorted signal
> from splitter
> To: usrp-users@lists.ettus.com
> Message-ID:
>
> >
> Content-Type: multipart/alternative;
> boundary=3D"000000000000d8512b05c8962e2b"
>
> Hello,
> I am working on a phase coherent application using USRP B210. As
> the phase
> difference between RX channels of B210 is relatively stable I
> wanted to see
> how it behaves across the whole frequency range. I performed some
> measurements and unfortunately for some frequencies I observed strange
> distortions. The setup consists of a TX USRP, RF splitter, matched
> cables
> and a second USRP with both RX channels connected to the splitter.
> Screams documenting the distortions:
> https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?=
usp=3Dsharing
> The received sine wave should have quite similar shape and spectral
> properties across both RX channels of USRP.
> What I observe instead is a symmetrical harmonic tone at one of
> the RX,
> when the other does not record it.
> There are also random distortions in one of the RX channels
> looking as if
> the sine signal was split and shifted at some point in time (looks
> like a
> some sort of buffer issue)
> This kind of distortion for some settings persists for some is not
> present
> or occurs regularly.
> To provide some illustiation I attach recordings and screens of the
> registered distortions.
> usrpb210_sine_rx_distoriton2.mp4
>
> usrpb210_sine_rx_distoriton.mp4
>
>
> I tried to debug this problem but it appears to be related to
> sample rate,
> TX tone frequency, carrier frequency and gains. (I checked dynamic IQ
> imbalance or gain controls and changing of the parameters did not
> affect
> anything)
> There are now underflow/overflow flags present while I run the
> flowchart.
> The signal that is provided to both RX is identical ( RF
> mini-circuits RF
> splitter), and any outside interferences are limited as the whole
> setup is
> connected via concentric cables. I tried to set the number of
> receive and
> sent frames to 1024 to ensure continuity, but that didn't help.
> It is strange that for some frequencies this phenomenon occurs
> while for
> others the phase difference variance is very low and there are no such
> distortions.
> Could You please explain the cause or propose some kind of
> solution to this
> issue?
>
> Kind regards,
> Marcin Wachowiak
> -------------- next part --------------
> A message part incompatible with plain text digests has been
> removed ...
> Name: not available
> Type: text/html
> Size: 4104 bytes
> Desc: not available
>
> ------------------------------
>
> Message: 4
> Date: Mon, 02 Aug 2021 12:39:31 -0400
> From: "Marcus D. Leech"
> >
> Subject: [USRP-users] Re: One RX channel of B210 presents distorted
> signal from splitter
> To: usrp-users@lists.ettus.com
> Message-ID: <61081FC3.1010007@gmail.com
> >
> Content-Type: multipart/alternative;
> boundary=3D"------------050204020106080302070102"
>
> On 08/02/2021 12:37 PM, Marcin Wachowiak wrote:
> > Hello,
> > I am working on a phase coherent application using USRP B210. As
> the
> > phase difference between RX channels of B210 is relatively stable I
> > wanted to see how it behaves across the whole frequency range. I
> > performed some measurements and unfortunately for some
> frequencies I
> > observed strange distortions. The setup consists of a TX USRP, RF
> > splitter, matched cables and a second USRP with both RX channels
> > connected to the splitter.
> > Screams documenting the distortions:
> >
> https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?=
usp=3Dsharing
> > The received sine wave should have quite similar shape and spectral
> > properties across both RX channels of USRP.
> > What I observe instead is a symmetrical harmonic tone at one of the
> > RX, when the other does not record it.
> > There are also random distortions in one of the RX channels
> looking as
> > if the sine signal was split and shifted at some point in time
> (looks
> > like a some sort of buffer issue)
> > This kind of distortion for some settings persists for some is not
> > present or occurs regularly.
> > To provide some illustiation I attach recordings and screens of the
> > registered distortions.
> > usrpb210_sine_rx_distoriton2.mp4
> >
>
> > usrpb210_sine_rx_distoriton.mp4
> >
>
> >
> > I tried to debug this problem but it appears to be related to
> sample
> > rate, TX tone frequency, carrier frequency and gains. (I checked
> > dynamic IQ imbalance or gain controls and changing of the
> parameters
> > did not affect anything)
> > There are now underflow/overflow flags present while I run the
> > flowchart. The signal that is provided to both RX is identical ( RF
> > mini-circuits RF splitter), and any outside interferences are
> limited
> > as the whole setup is connected via concentric cables. I tried
> to set
> > the number of receive and sent frames to 1024 to ensure continuity,
> > but that didn't help.
> > It is strange that for some frequencies this phenomenon occurs
> while
> > for others the phase difference variance is very low and there
> are no
> > such distortions.
> > Could You please explain the cause or propose some kind of
> solution to
> > this issue?
> >
> > Kind regards,
> > Marcin Wachowiak
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
>
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> What are your signal levels going into the RX USRP?
>
> They need to be well below -20dBm or so to protect against
> non-linearity, and even then, that's awfully loud.
>
>
>
>
> -------------- next part --------------
> A message part incompatible with plain text digests has been
> removed ...
> Name: not available
> Type: text/html
> Size: 6081 bytes
> Desc: not available
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 132, Issue 2
> ******************************************
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

-------------- next part --------------
A message part incompatible with plain text digests has been removed ...
Name: not available
Type: text/html
Size: 24310 bytes
Desc: not available

------------------------------

Subject: Digest Footer

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com


------------------------------

End of USRP-users Digest, Vol 132, Issue 8
******************************************
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

------=_NextPart_13161088.797861521985
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000;text-align: left" dir=3D"ltr">=0A                       =
                 Marcin, we are using the B210 in an application that requi=
res a high degree of coherency between the two Rx inputs. We rarely change =
the data capture from 20MSPS, unlike your case, but I have completed analys=
is of 260 1-Gb data files and have not seen anything like what I saw in you=
r videos. When looking at the videos, my first instinct was that you were p=
icking up WiFi or Bluetooth interference on one channel. Perhaps you are we=
ll past such considerations, but I thought I'd give my 30-second impression=
.&nbsp;<div>-page heller<br><div class=3D"mb_sig"></div><blockquote class=
=3D"history_container" type=3D"cite" style=3D"border-left-style:solid;borde=
r-width:1px; margin-top:20px; margin-left:0px;padding-left:10px;">=0A      =
                  <p style=3D"color: #AAAAAA; margin-top: 10px;">On 8/3/202=
1 1:20:57 PM, marcin.r.wachowiak@gmail.com &lt;marcin.r.wachowiak@gmail.com=
&gt; wrote:</p><div style=3D"font-family:Arial,Helvetica,sans-serif">Hello,=
 =0A<br>Thank You for the interest in my problem.=0A<br>Yes I am feeding th=
e signal into both RX2 ports. I have just repeated the same thing symmetric=
ally for TX/RX ports and the distortion was present again.=0A<br>=0A<br>Kin=
d regard,=0A<br>Marcin Wachowiak=0A<br>=0A<br>-----Wiadomo=C5=9B=C4=87 oryg=
inalna-----=0A<br>Od: usrp-users-request@lists.ettus.com <usrp-users-reques=
t@lists.ettus.com> =0A<br>Wys=C5=82ano: Tuesday, 3 August 2021 19:48=0A<br>=
Do: usrp-users@lists.ettus.com=0A<br>Temat: USRP-users Digest, Vol 132, Iss=
ue 8=0A<br>=0A<br>Send USRP-users mailing list submissions to=0A<br>	usrp-u=
sers@lists.ettus.com=0A<br>=0A<br>To subscribe or unsubscribe via email, se=
nd a message with subject or body 'help' to=0A<br>	usrp-users-request@lists=
.ettus.com=0A<br>=0A<br>You can reach the person managing the list at=0A<br=
>	usrp-users-owner@lists.ettus.com=0A<br>=0A<br>When replying, please edit =
your Subject line so it is more specific than "Re: Contents of USRP-users d=
igest..."=0A<br>=0A<br>Today's Topics:=0A<br>=0A<br>   1. Re: Optical SFP+ =
adapters for N321 (Vladica Sark)=0A<br>   2. Re: One RX channel of B210 pre=
sents distorted signal from splitter=0A<br>      (Marcus D. Leech)=0A<br>=
=0A<br>=0A<br>-------------------------------------------------------------=
---------=0A<br>=0A<br>Message: 1=0A<br>Date: Tue, 3 Aug 2021 17:39:36 +020=
0=0A<br>From: Vladica Sark <vladicasark@gmail.com>=0A<br>Subject: [USRP-use=
rs] Re: Optical SFP+ adapters for N321=0A<br>To: Michael Dickens <michael.d=
ickens@ettus.com>=0A<br>Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.=
ettus.com>=0A<br>Message-ID: <e04c8632-3f91-31d3-bdfc-bd7e764d7cd8@gmail.co=
m>=0A<br>Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed=0A<br>=
=0A<br>Hi Michael,=0A<br>=0A<br>Thanks for informing us about this. I would=
 be happy to test it. I am in the moment on vacation, but next week I will =
find some time to test it.=0A<br>=0A<br>Best regards,=0A<br>Vladica=0A<br>=
=0A<br>=0A<br>On 03.08.21 17:17, Michael Dickens wrote:=0A<br>&gt; Hi Vladi=
ca &amp; the USRP community - For those of you who have White =0A<br>&gt; R=
abbit equipment, you can download brand new hot off the buildbots WR =0A<br=
>&gt; FPGA images (WX and XQ) for your N3x0 or N32x here &lt; =0A<br>&gt; h=
ttps://drive.google.com/drive/folders/1y-AJA2ZBaHgwyRCiOfatfAyLSX0t1G=0A<br=
>&gt; 7l?usp=3Dsharing =0A<br>&gt; <https: drive.google.com=3D"" drive=3D""=
 folders=3D"" 1y-aja2zbahgwyrciofatfaylsx0t1=3D""></https:><br>&gt; G7l?usp=
=3Dsharing&gt;&gt; . Note that these are for UHD 4.1.0.X -- UHD public =0A<=
br>&gt; GIT master; GIT branch UHD-4.1, or 4.1.0.0 or 4.1.0.1 releases. I'v=
e =0A<br>&gt; tested these FPGA images on N310 revision 5 and 7, and N320 (=
current =0A<br>&gt; revision); just up through "benchmark_rate" when specif=
ying =0A<br>&gt; "time_source=3Dsfp0" and multiple channels, both on the US=
RP and remote =0A<br>&gt; to a host ... all works fine! Thus, I wanted to g=
et the FPGA images =0A<br>&gt; out to customers for testing / evaluation ..=
. If you do so, I'd love =0A<br>&gt; to hear of your successes / issues! - =
MLD=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; On Tue, Jul 13, 2021 at 2:01 PM Vladic=
a Sark <vladicasark@gmail.com></vladicasark@gmail.com><br>&gt; <mailto:vlad=
icasark@gmail.com>&gt; wrote:=0A<br>&gt;=0A<br>&gt;     Hi Rob,=0A<br>&gt;=
=0A<br>&gt;     Thanks for this useful information.=0A<br>&gt;     Accordin=
g to Michael it should be fixed mid/late July 2021, so pretty=0A<br>&gt;   =
  soon. Meanwhile I can only switch back to X310 probably, and see=0A<br>&g=
t;     if it=0A<br>&gt;     works there.=0A<br>&gt;=0A<br>&gt;     Let's ho=
pe it would be fixed soon.=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;     BR,=0A<br>&=
gt;     Vladica=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;     On 12.07.21 17:47, Rob=
 Kossler wrote:=0A<br>&gt;     &gt; Hi Vladica,=0A<br>&gt;     &gt; From th=
e 'changelog', it appears that N321 support began with=0A<br>&gt;     relea=
se=0A<br>&gt;     &gt; 3.14.  But, at that point I believe that WR was alre=
ady broken. =0A<br>&gt;     So, I=0A<br>&gt;     &gt; think that there is n=
o solution to your problem other than to=0A<br>&gt;     wait for=0A<br>&gt;=
     &gt; Ettus to fix the WR issues.  However, WR has been broken for a=0A=
<br>&gt;     while=0A<br>&gt;     &gt; (note user-list posts from last fall=
 Sept  &amp; Dec) so I don't=0A<br>&gt;     know when=0A<br>&gt;     &gt; t=
his will be working again.=0A<br>&gt;     &gt; Rob=0A<br>&gt;     &gt;=0A<b=
r>&gt;     &gt;=0A<br>&gt;     &gt; On Wed, Jul 7, 2021 at 10:26 AM Vladica=
 Sark=0A<br>&gt;     <vladicasark@gmail.com></vladicasark@gmail.com><mailto=
:vladicasark@gmail.com>=0A<br>&gt;     &gt; <mailto:vladicasark@gmail.com><=
/mailto:vladicasark@gmail.com><mailto:vladicasark@gmail.com>&gt;&gt;=0A<br>=
&gt;     wrote:=0A<br>&gt;     &gt;=0A<br>&gt;     &gt;     Hi Michael,=0A<=
br>&gt;     &gt;=0A<br>&gt;     &gt;     I obtained the necessary SFP+ opti=
cal adapters and now I am=0A<br>&gt;     trying to=0A<br>&gt;     &gt;     =
put uhd 3.13.1.0 on the N321s in order to use the WR=0A<br>&gt;     synchro=
nization.=0A<br>&gt;     &gt;     Unfortunately, when I update the sd card =
image with 3.13.1.0=0A<br>&gt;     the N321=0A<br>&gt;     &gt;     boots b=
ut the SFP0 and SFP1 do not go up. When I try to run=0A<br>&gt;     &gt;   =
  uhd_find_devices, on a terminal using the USB port it says=0A<br>&gt;    =
 no UHD=0A<br>&gt;     &gt;     devices are found.=0A<br>&gt;     &gt;=0A<b=
r>&gt;     &gt;     I believe that the right FPGA image should be put on th=
e=0A<br>&gt;     FPGA, but=0A<br>&gt;     &gt;     the=0A<br>&gt;     &gt; =
    ways described in Knowledgebase are not working.=0A<br>&gt;     &gt;=0A=
<br>&gt;     &gt;     Is there a way to put the version 3.13.1.0 on the N32=
1? I=0A<br>&gt;     have tried=0A<br>&gt;     &gt;     version 4.0.0.0 and =
it is working fine, but WR is broken.=0A<br>&gt;     &gt;=0A<br>&gt;     &g=
t;     BR,=0A<br>&gt;     &gt;     Vladica=0A<br>&gt;     &gt;=0A<br>&gt;  =
   &gt;=0A<br>&gt;     &gt;     On 22.06.21 21:31, Michael Dickens wrote:=
=0A<br>&gt;     &gt;     &gt; I'm using primarily FS adapters, cables (sing=
le and multi=0A<br>&gt;     mode),=0A<br>&gt;     &gt;     and=0A<br>&gt;  =
   &gt;     &gt; fiber connectors (to allow multiplexing lanes). The adapte=
rs I=0A<br>&gt;     &gt;     bought=0A<br>&gt;     &gt;     &gt; were "gene=
ric" and had to be tweaked using an FS BOX to be=0A<br>&gt;     fully=0A<br=
>&gt;     &gt;     &gt; compatible with Intel or Mellanox NICs. This tweaki=
ng=0A<br>&gt;     seems to have=0A<br>&gt;     &gt;     &gt; helped a lot w=
ith the 100 Gb interface (E810); the 10 Gb=0A<br>&gt;     &gt;     interfac=
es do=0A<br>&gt;     &gt;     &gt; not show much benefit to be manufacturer=
 specific --=0A<br>&gt;     though I'm=0A<br>&gt;     &gt;     sure=0A<br>&=
gt;     &gt;     &gt; it doesn't hurt! I have not tried a multi-mode to sin=
gle mode=0A<br>&gt;     &gt;     splitter=0A<br>&gt;     &gt;     &gt; / jo=
iner, but I'd suppose they do exist &amp; if anybody here=0A<br>&gt;     ha=
s had=0A<br>&gt;     &gt;     &gt; experience that would be useful to hear =
about! I hope this is=0A<br>&gt;     &gt;     useful!=0A<br>&gt;     &gt;  =
   &gt; - MLD=0A<br>&gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;=0A<=
br>&gt;     &gt;     &gt; On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark=0A<=
br>&gt;     &gt;     <vladicasark@gmail.com></vladicasark@gmail.com><mailto=
:vladicasark@gmail.com>=0A<br>&gt;     <mailto:vladicasark@gmail.com></mail=
to:vladicasark@gmail.com><mailto:vladicasark@gmail.com>&gt;=0A<br>&gt;     =
&gt;     &gt; <mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.com>=
<br>&gt;     <mailto:vladicasark@gmail.com> <mailto:vladicasark@gmail.com><=
/mailto:vladicasark@gmail.com><br>&gt;     <mailto:vladicasark@gmail.com>&g=
t;&gt;&gt;=0A<br>&gt;     &gt;     wrote:=0A<br>&gt;     &gt;     &gt;=0A<b=
r>&gt;     &gt;     &gt;     Hi Michael,=0A<br>&gt;     &gt;     &gt;=0A<br=
>&gt;     &gt;     &gt;     Thanks for the answer. For now for the data I a=
m using DAC=0A<br>&gt;     &gt;     cables,=0A<br>&gt;     &gt;     &gt;   =
  but=0A<br>&gt;     &gt;     &gt;     we would need larger distances, i.e.=
 50+ meters, and for=0A<br>&gt;     &gt;     this I would=0A<br>&gt;     &g=
t;     &gt;     need fibers for both WR and data.=0A<br>&gt;     &gt;     &=
gt;=0A<br>&gt;     &gt;     &gt;     Is there also some optical multiplexer=
 for these=0A<br>&gt;     wavelengths, in=0A<br>&gt;     &gt;     &gt;     =
order=0A<br>&gt;     &gt;     &gt;     to use a simplex fiber, for both WR =
and data?=0A<br>&gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;     BR,=
=0A<br>&gt;     &gt;     &gt;     Vladica=0A<br>&gt;     &gt;     &gt;=0A<b=
r>&gt;     &gt;     &gt;     On 22.06.21 15:41, Michael Dickens wrote:=0A<b=
r>&gt;     &gt;     &gt;     &gt; Hi Vladica - I've tested a variety of fib=
er adapters and=0A<br>&gt;     &gt;     cables=0A<br>&gt;     &gt;     &gt;=
     with=0A<br>&gt;     &gt;     &gt;     &gt; no issues (e.g., ZyXEL, FS,=
 Axcen). The primary keys are=0A<br>&gt;     &gt;     to make=0A<br>&gt;   =
  &gt;     &gt;     sure=0A<br>&gt;     &gt;     &gt;     &gt; the various =
related parameters match up between the=0A<br>&gt;     &gt;     adapters an=
d=0A<br>&gt;     &gt;     &gt;     &gt; cables and devices. For example: If=
 the adapter is=0A<br>&gt;     1490/1310,=0A<br>&gt;     &gt;     &gt;     =
then you=0A<br>&gt;     &gt;     &gt;     &gt; want to make sure the cable =
is for the same=0A<br>&gt;     wavelengths. Same=0A<br>&gt;     &gt;     &g=
t;     for the=0A<br>&gt;     &gt;     &gt;     &gt; fiber polish and other=
 parameters (single / dual=0A<br>&gt;     fiber ; .=0A<br>&gt;     &gt;    =
 Some are=0A<br>&gt;     &gt;     &gt;     &gt; easier than others, none of=
 this is too difficult=0A<br>&gt;     luckily!=0A<br>&gt;     &gt;     &gt;=
     &gt;=0A<br>&gt;     &gt;     &gt;     &gt; For short distances, a DAC =
cable will work for all=0A<br>&gt;     of the=0A<br>&gt;     &gt;     N320/=
N321=0A<br>&gt;     &gt;     &gt;     &gt; SFP interfaces.=0A<br>&gt;     &=
gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;     &gt; At the moment, =
WR support is being fixed for UHD=0A<br>&gt;     3.14.0.0 to=0A<br>&gt;    =
 &gt;     &gt;     current.=0A<br>&gt;     &gt;     &gt;     &gt; If you -r=
equire- WR support -right now- you can use UHD=0A<br>&gt;     &gt;     3.13=
.1.0=0A<br>&gt;     &gt;     &gt;     while=0A<br>&gt;     &gt;     &gt;   =
  &gt; we're working out how to fix WR for newer UHD. We expect=0A<br>&gt; =
    &gt;     the fix=0A<br>&gt;     &gt;     &gt;     to be=0A<br>&gt;     =
&gt;     &gt;     &gt; available to customers sometime in mid/late-July=0A<=
br>&gt;     (2021); once=0A<br>&gt;     &gt;     &gt;     the fix=0A<br>&gt=
;     &gt;     &gt;     &gt; is determined and verified we will commit it t=
o the=0A<br>&gt;     various=0A<br>&gt;     &gt;     &gt;     branches=0A<b=
r>&gt;     &gt;     &gt;     &gt; of the UHD repository, and it will be ava=
ilable in UHD=0A<br>&gt;     &gt;     -after- the=0A<br>&gt;     &gt;     &=
gt;     &gt; forthcoming 4.1 release. It will be available in the=0A<br>&gt=
;     &gt;     public UHD=0A<br>&gt;     &gt;     &gt;     &gt; repository =
for folks to use to patch UHD between=0A<br>&gt;     releases.=0A<br>&gt;  =
   &gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;     &gt; I hope this=
 is useful! - MLD=0A<br>&gt;     &gt;     &gt;     &gt;=0A<br>&gt;     &gt;=
     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;     &gt; On Tue, Jun 22, 20=
21 at 6:19 AM Vladica Sark=0A<br>&gt;     &gt;     &gt;     <vladicasark@gm=
ail.com></vladicasark@gmail.com><mailto:vladicasark@gmail.com>=0A<br>&gt;  =
   <mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.com><mailto:vla=
dicasark@gmail.com>&gt;=0A<br>&gt;     &gt;     <mailto:vladicasark@gmail.c=
om></mailto:vladicasark@gmail.com><mailto:vladicasark@gmail.com>=0A<br>&gt;=
     <mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.com><mailto:v=
ladicasark@gmail.com>&gt;&gt;=0A<br>&gt;     &gt;     &gt;     &gt; <mailto=
:vladicasark@gmail.com></mailto:vladicasark@gmail.com><br>&gt;     <mailto:=
vladicasark@gmail.com>=0A<br>&gt;     &gt;     <mailto:vladicasark@gmail.co=
m></mailto:vladicasark@gmail.com><br>&gt;     <mailto:vladicasark@gmail.com=
>&gt; <mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.com><br>&gt;=
     <mailto:vladicasark@gmail.com>=0A<br>&gt;     &gt;     <mailto:vladica=
sark@gmail.com></mailto:vladicasark@gmail.com><mailto:vladicasark@gmail.com=
>&gt;&gt;&gt;&gt;=0A<br>&gt;     &gt;     &gt;     wrote:=0A<br>&gt;     &g=
t;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;     &gt;     Dear all,=0A=
<br>&gt;     &gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;     &gt;  =
   I would like to use N321 with WRS 3/18 which=0A<br>&gt;     uses optical=
=0A<br>&gt;     &gt;     &gt;     cables. I=0A<br>&gt;     &gt;     &gt;   =
  &gt;     would like to use also for the 10 Gbit SFP1=0A<br>&gt;     optic=
al SFP+=0A<br>&gt;     &gt;     &gt;     transceiver.=0A<br>&gt;     &gt;  =
   &gt;     &gt;     Do you have some recommended optical SFP+ adapters,=0A=
<br>&gt;     &gt;     duplex and,=0A<br>&gt;     &gt;     &gt;     &gt;    =
 preferably, simplex?=0A<br>&gt;     &gt;     &gt;     &gt;     The idea is=
 to use a duplex monomode fiber, one=0A<br>&gt;     fiber for=0A<br>&gt;   =
  &gt;     &gt;     the 10 Gbit=0A<br>&gt;     &gt;     &gt;     &gt;     d=
ata and one fiber for WRS synchronization.=0A<br>&gt;     &gt;     &gt;    =
 &gt;     They would be connected to 10 Gbit switch or QNAP=0A<br>&gt;     =
&gt;     &gt;     Thunderbolt to SFP+=0A<br>&gt;     &gt;     &gt;     &gt;=
     adapter, so they do not have to be Intel.=0A<br>&gt;     &gt;     &gt;=
     &gt;=0A<br>&gt;     &gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt=
;     &gt;     Best regards,=0A<br>&gt;     &gt;     &gt;     &gt;=0A<br>&g=
t;     &gt;     &gt;     &gt;     Vladica=0A<br>&gt;     &gt;     &gt;     =
&gt;=0A<br>&gt;     &gt;     &gt;     &gt;  _______________________________=
________________=0A<br>&gt;     &gt;     &gt;     &gt;     USRP-users maili=
ng list --=0A<br>&gt;     usrp-users@lists.ettus.com <mailto:usrp-users@lis=
ts.ettus.com>=0A<br>&gt;     &gt;     <mailto:usrp-users@lists.ettus.com></=
mailto:usrp-users@lists.ettus.com><br>&gt;     <mailto:usrp-users@lists.ett=
us.com>&gt;=0A<br>&gt;     &gt;     &gt;     <mailto:usrp-users@lists.ettus=
.com></mailto:usrp-users@lists.ettus.com><br>&gt;     <mailto:usrp-users@li=
sts.ettus.com>=0A<br>&gt;     &gt;     <mailto:usrp-users@lists.ettus.com><=
/mailto:usrp-users@lists.ettus.com><br>&gt;     <mailto:usrp-users@lists.et=
tus.com>&gt;&gt;=0A<br>&gt;     &gt;     &gt;     &gt;     <mailto:usrp-use=
rs@lists.ettus.com></mailto:usrp-users@lists.ettus.com><br>&gt;     <mailto=
:usrp-users@lists.ettus.com>=0A<br>&gt;     &gt;     <mailto:usrp-users@lis=
ts.ettus.com></mailto:usrp-users@lists.ettus.com><br>&gt;     <mailto:usrp-=
users@lists.ettus.com>&gt;=0A<br>&gt;     &gt;     &gt;     <mailto:usrp-us=
ers@lists.ettus.com></mailto:usrp-users@lists.ettus.com><br>&gt;     <mailt=
o:usrp-users@lists.ettus.com>=0A<br>&gt;     &gt;     <mailto:usrp-users@li=
sts.ettus.com></mailto:usrp-users@lists.ettus.com><br>&gt;     <mailto:usrp=
-users@lists.ettus.com>&gt;&gt;&gt;=0A<br>&gt;     &gt;     &gt;     &gt;  =
   To unsubscribe send an email to=0A<br>&gt;     &gt;     &gt; usrp-users-=
leave@lists.ettus.com=0A<br>&gt;     <mailto:usrp-users-leave@lists.ettus.c=
om>=0A<br>&gt;     &gt;     <mailto:usrp-users-leave@lists.ettus.com></mail=
to:usrp-users-leave@lists.ettus.com><br>&gt;     <mailto:usrp-users-leave@l=
ists.ettus.com>&gt;=0A<br>&gt;     &gt;     &gt;     <mailto:usrp-users-lea=
ve@lists.ettus.com></mailto:usrp-users-leave@lists.ettus.com><br>&gt;     <=
mailto:usrp-users-leave@lists.ettus.com>=0A<br>&gt;     &gt;     <mailto:us=
rp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lists.ettus.com><b=
r>&gt;     <mailto:usrp-users-leave@lists.ettus.com>&gt;&gt;=0A<br>&gt;    =
 &gt;     &gt;     &gt;     <mailto:usrp-users-leave@lists.ettus.com></mail=
to:usrp-users-leave@lists.ettus.com><br>&gt;     <mailto:usrp-users-leave@l=
ists.ettus.com>=0A<br>&gt;     &gt;     <mailto:usrp-users-leave@lists.ettu=
s.com></mailto:usrp-users-leave@lists.ettus.com><br>&gt;     <mailto:usrp-u=
sers-leave@lists.ettus.com>&gt;=0A<br>&gt;     &gt;     &gt;     <mailto:us=
rp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lists.ettus.com><b=
r>&gt;     <mailto:usrp-users-leave@lists.ettus.com>=0A<br>&gt;     &gt;   =
  <mailto:usrp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lists.=
ettus.com><br>&gt;     <mailto:usrp-users-leave@lists.ettus.com>&gt;&gt;&gt=
;=0A<br>&gt;     &gt;     &gt;     &gt;=0A<br>&gt;     &gt;     &gt;=0A<br>=
&gt;     &gt;     _______________________________________________=0A<br>&gt=
;     &gt;     USRP-users mailing list -- usrp-users@lists.ettus.com=0A<br>=
&gt;     <mailto:usrp-users@lists.ettus.com>=0A<br>&gt;     &gt;     <mailt=
o:usrp-users@lists.ettus.com></mailto:usrp-users@lists.ettus.com><br>&gt;  =
   <mailto:usrp-users@lists.ettus.com>&gt;=0A<br>&gt;     &gt;     To unsub=
scribe send an email to=0A<br>&gt;     usrp-users-leave@lists.ettus.com=0A<=
br>&gt;     <mailto:usrp-users-leave@lists.ettus.com>=0A<br>&gt;     &gt;  =
   <mailto:usrp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lists=
.ettus.com><br>&gt;     <mailto:usrp-users-leave@lists.ettus.com>&gt;=0A<br=
>&gt;     &gt;=0A<br>&gt;=0A<br>=0A<br>------------------------------=0A<br=
>=0A<br>Message: 2=0A<br>Date: Tue, 03 Aug 2021 13:48:17 -0400=0A<br>From: =
"Marcus D. Leech" <patchvonbraun@gmail.com>=0A<br>Subject: [USRP-users] Re:=
 One RX channel of B210 presents distorted=0A<br>	signal from splitter=0A<b=
r>To: usrp-users@lists.ettus.com=0A<br>Message-ID: &lt;61098161.4060405@gma=
il.com&gt;=0A<br>Content-Type: multipart/alternative;=0A<br>	boundary=3D"--=
----------040402040901010904020401"=0A<br>=0A<br>On 08/03/2021 11:08 AM, Ma=
rcin Wachowiak wrote:=0A<br>&gt; Hello,=0A<br>&gt; The signals provided at =
the input have quite low power, far below the =0A<br>&gt; threshold of -20d=
bm. ( I don't know the exact values but I =0A<br>&gt; additionally even add=
ed a 30dB attenuator for safety) What I also =0A<br>&gt; found out is that =
the distortions are dependent more on the setting of =0A<br>&gt; the RX, TX=
 gain than the value.  During live testing I observed the =0A<br>&gt; this =
harmonic distortion at one channel only, and after increasing the =0A<br>&g=
t; TX or RX gain it disappeared  (what is visible in the new videos):=0A<br=
>&gt; usrp_b210_strange_harmonic_distoriton.mp4=0A<br>&gt; <https: drive.go=
ogle.com=3D"" file=3D"" d=3D"" 1hyhfi_oxke5k9pgtz-r88n-dnfaijuyp=3D"" vie=
=3D""></https:><br>&gt; w?usp=3Ddrive_web&gt;=0A<br>&gt; usrp_b210_strange_=
harmonic_distoriton_2.mp4=0A<br>&gt; <https: drive.google.com=3D"" file=3D"=
" d=3D"" 15bq0hmujflwska8qb7w_7-expf3ogv7y=3D"" vie=3D""></https:><br>&gt; =
w?usp=3Ddrive_web&gt;=0A<br>&gt; Kind regards,=0A<br>&gt; Marcin Wachowiak=
=0A<br>Right because distortion in RF components isn't going to start occur=
ring at a uniform level over each discrete device--there will be variabilit=
y.=0A<br>=0A<br>Are you using the same (RX2) antenna inputs in each case?  =
At high gain levels it doesn't take much to drive things into non-linear op=
eration.=0A<br>=0A<br>=0A<br>&gt;=0A<br>&gt; On Mon, 2 Aug 2021 at 18:57, <=
usrp-users-request@lists.ettus.com></usrp-users-request@lists.ettus.com><br=
>&gt; <mailto:usrp-users-request@lists.ettus.com>&gt; wrote:=0A<br>&gt;=0A<=
br>&gt;     Send USRP-users mailing list submissions to=0A<br>&gt;     usrp=
-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=0A<br>&gt;=0A<br=
>&gt;     To subscribe or unsubscribe via email, send a message with subjec=
t or=0A<br>&gt;     body 'help' to=0A<br>&gt;     usrp-users-request@lists.=
ettus.com=0A<br>&gt;     <mailto:usrp-users-request@lists.ettus.com>=0A<br>=
&gt;=0A<br>&gt;     You can reach the person managing the list at=0A<br>&gt=
;     usrp-users-owner@lists.ettus.com=0A<br>&gt;     <mailto:usrp-users-ow=
ner@lists.ettus.com>=0A<br>&gt;=0A<br>&gt;     When replying, please edit y=
our Subject line so it is more specific=0A<br>&gt;     than "Re: Contents o=
f USRP-users digest..."=0A<br>&gt;=0A<br>&gt;     Today's Topics:=0A<br>&gt=
;=0A<br>&gt;        1. Older B100 and associated Daughter cards. (Guy Menge=
l)=0A<br>&gt;        2. Re: Older B100 and associated Daughter cards. (Rich=
ard Stanley)=0A<br>&gt;        3. One RX channel of B210 presents distorted=
 signal from splitter=0A<br>&gt;           (Marcin Wachowiak)=0A<br>&gt;   =
     4. Re: One RX channel of B210 presents distorted signal from=0A<br>&gt=
;     splitter=0A<br>&gt;           (Marcus D. Leech)=0A<br>&gt;=0A<br>&gt;=
=0A<br>&gt;     -----------------------------------------------------------=
-----------=0A<br>&gt;=0A<br>&gt;     Message: 1=0A<br>&gt;     Date: Mon, =
02 Aug 2021 09:47:18 -0400=0A<br>&gt;     From: Guy Mengel <guy@eastroad.or=
g></guy@eastroad.org><mailto:guy@eastroad.org>&gt;=0A<br>&gt;     Subject: =
[USRP-users] Older B100 and associated Daughter cards.=0A<br>&gt;     To: u=
srp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=0A<br>&gt;   =
  Message-ID: &lt;823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org=0A<br>&=
gt;     <mailto:823ade77-dfb9-4632-b924-c31c5b76b128@eastroad.org>&gt;=0A<b=
r>&gt;     Content-Type: text/plain; markup=3Dmarkdown=0A<br>&gt;=0A<br>&gt=
;     Hi All,=0A<br>&gt;     I am finally going to get started using an old=
er B100 USRP with=0A<br>&gt;     the LFTX, LFRX, WBX daughter boards.  I pu=
rchased these from a=0A<br>&gt;     well known amateur radio op in January =
of this year. I had played=0A<br>&gt;     with it for a short time on Ubunt=
u 18.04 with the older=0A<br>&gt;     unsupported Python2 interface, this w=
as a start. Then the Covid=0A<br>&gt;     Pandemic hit.=0A<br>&gt;     Well=
, I am now back.=0A<br>&gt;     Are there any users in the group using the =
B100 USRP with the=0A<br>&gt;     LFTX, LFRX, WBX daughter boards using a n=
ewer Ubuntu 20.04 with=0A<br>&gt;     updated Python 3.X with GNURADIO?  I =
wanted to see if there were=0A<br>&gt;     any still using this older SDR. =
 My plans are to experiment with=0A<br>&gt;     it and create a rig to be u=
sed at HF and possibly UHF to microwave=0A<br>&gt;     down the road.=0A<br=
>&gt;=0A<br>&gt;     I would also like to have pointers too!=0A<br>&gt;=0A<=
br>&gt;     Thanks!=0A<br>&gt;     Guy Mengel N1GMM=0A<br>&gt;=0A<br>&gt;=
=0A<br>&gt;     ------------------------------=0A<br>&gt;=0A<br>&gt;     Me=
ssage: 2=0A<br>&gt;     Date: Mon, 2 Aug 2021 10:37:14 -0400=0A<br>&gt;    =
 From: Richard Stanley <richardlstanley@gmail.com></richardlstanley@gmail.c=
om><br>&gt;     <mailto:richardlstanley@gmail.com>&gt;=0A<br>&gt;     Subje=
ct: [USRP-users] Re: Older B100 and associated Daughter cards.=0A<br>&gt;  =
   To: Guy Mengel <guy@eastroad.org></guy@eastroad.org><mailto:guy@eastroad=
.org>&gt;=0A<br>&gt;     Cc: usrp-users@lists.ettus.com <mailto:usrp-users@=
lists.ettus.com>=0A<br>&gt;     Message-ID: &lt;17BFD25F-4714-4789-AB3F-450=
3A89B25F2@gmail.com=0A<br>&gt;     <mailto:17bfd25f-4714-4789-ab3f-4503a89b=
25f2@gmail.com>&gt;=0A<br>&gt;     Content-Type: text/plain;       charset=
=3Dus-ascii=0A<br>&gt;=0A<br>&gt;     (Resent to include mailing list)=0A<b=
r>&gt;=0A<br>&gt;     Hi Guy,=0A<br>&gt;=0A<br>&gt;     I've recently used =
B100s with the LFRX, BasicRX, and (EOL) TVRX2=0A<br>&gt;     with the lates=
t UHD and GNU Radio 3.8 on Ubuntu 20.04.=0A<br>&gt;=0A<br>&gt;     A challe=
nge for me with the LFRX/TX and BasicRX/TX was finding the=0A<br>&gt;     c=
orrect sub-device specification as they can acquire/transmit an=0A<br>&gt; =
    IQ pair or real-valued signals. In addition, I required a Hilbert=0A<br=
>&gt;     transform to convert real-valued samples in baseband to complex=
=0A<br>&gt;     for some processing in GNU Radio for Rx. There are a lot of=
=0A<br>&gt;     questions about these daughtercards in the mailing list arc=
hive=0A<br>&gt;     and often the questions seem to be about sub-device spe=
cification=0A<br>&gt;     and real-valued versus IQ.=0A<br>&gt;=0A<br>&gt; =
    Enjoy the B100!=0A<br>&gt;=0A<br>&gt;     HTH,=0A<br>&gt;     Richard=
=0A<br>&gt;=0A<br>&gt;     On Aug 2, 2021, at 09:47, Guy Mengel <guy@eastro=
ad.org></guy@eastroad.org><br>&gt;     <mailto:guy@eastroad.org>&gt; wrote:=
=0A<br>&gt;=0A<br>&gt;     Hi All,=0A<br>&gt;     I am finally going to get=
 started using an older B100 USRP with=0A<br>&gt;     the LFTX, LFRX, WBX d=
aughter boards.  I purchased these from a=0A<br>&gt;     well known amateur=
 radio op in January of this year. I had played=0A<br>&gt;     with it for =
a short time on Ubuntu 18.04 with the older=0A<br>&gt;     unsupported Pyth=
on2 interface, this was a start. Then the Covid=0A<br>&gt;     Pandemic hit=
.=0A<br>&gt;     Well, I am now back.=0A<br>&gt;     Are there any users in=
 the group using the B100 USRP with the=0A<br>&gt;     LFTX, LFRX, WBX daug=
hter boards using a newer Ubuntu 20.04 with=0A<br>&gt;     updated Python 3=
.X with GNURADIO?  I wanted to see if there were=0A<br>&gt;     any still u=
sing this older SDR.  My plans are to experiment with=0A<br>&gt;     it and=
 create a rig to be used at HF and possibly UHF to microwave=0A<br>&gt;    =
 down the road.=0A<br>&gt;=0A<br>&gt;     I would also like to have pointer=
s too!=0A<br>&gt;=0A<br>&gt;     Thanks!=0A<br>&gt;     Guy Mengel N1GMM=0A=
<br>&gt;=0A<br>&gt;     _______________________________________________=0A<=
br>&gt;     USRP-users mailing list -- usrp-users@lists.ettus.com=0A<br>&gt=
;     <mailto:usrp-users@lists.ettus.com>=0A<br>&gt;     To unsubscribe sen=
d an email to usrp-users-leave@lists.ettus.com=0A<br>&gt;     <mailto:usrp-=
users-leave@lists.ettus.com>=0A<br>&gt;=0A<br>&gt;     --------------------=
----------=0A<br>&gt;=0A<br>&gt;     Message: 3=0A<br>&gt;     Date: Mon, 2=
 Aug 2021 18:37:08 +0200=0A<br>&gt;     From: Marcin Wachowiak <marcin.r.wa=
chowiak@gmail.com></marcin.r.wachowiak@gmail.com><br>&gt;     <mailto:marci=
n.r.wachowiak@gmail.com>&gt;=0A<br>&gt;     Subject: [USRP-users] One RX ch=
annel of B210 presents distorted signal=0A<br>&gt;             from splitte=
r=0A<br>&gt;     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.et=
tus.com>=0A<br>&gt;     Message-ID:=0A<br>&gt;            =0A<br>&gt;     <=
caofh71xdrz7a+xu89t-6gewy4aa_hmnfb+-0aege6y-f4zvnla@mail.gmail.com></caofh7=
1xdrz7a+xu89t-6gewy4aa_hmnfb+-0aege6y-f4zvnla@mail.gmail.com><mailto:caofh7=
1xdrz7a%2bxu89t-6gewy4aa_hmnfb%2b-0aege6y-f4zvnla@mail.gmail.com>&gt;=0A<br=
>&gt;     Content-Type: multipart/alternative;=0A<br>&gt;             bound=
ary=3D"000000000000d8512b05c8962e2b"=0A<br>&gt;=0A<br>&gt;     Hello,=0A<br=
>&gt;     I am working on a phase coherent application using USRP B210. As=
=0A<br>&gt;     the phase=0A<br>&gt;     difference between RX channels of =
B210 is relatively stable I=0A<br>&gt;     wanted to see=0A<br>&gt;     how=
 it behaves across the whole frequency range. I performed some=0A<br>&gt;  =
   measurements and unfortunately for some frequencies I observed strange=
=0A<br>&gt;     distortions. The setup consists of a TX USRP, RF splitter, =
matched=0A<br>&gt;     cables=0A<br>&gt;     and a second USRP with both RX=
 channels connected to the splitter.=0A<br>&gt;     Screams documenting the=
 distortions:=0A<br>&gt;     https://drive.google.com/drive/folders/1DkjrVK=
z3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing=0A<br>&gt;     The received sine w=
ave should have quite similar shape and spectral=0A<br>&gt;     properties =
across both RX channels of USRP.=0A<br>&gt;     What I observe instead is a=
 symmetrical harmonic tone at one of=0A<br>&gt;     the RX,=0A<br>&gt;     =
when the other does not record it.=0A<br>&gt;     There are also random dis=
tortions in one of the RX channels=0A<br>&gt;     looking as if=0A<br>&gt; =
    the sine signal was split and shifted at some point in time (looks=0A<b=
r>&gt;     like a=0A<br>&gt;     some sort of buffer issue)=0A<br>&gt;     =
This kind of distortion for some settings persists for some is not=0A<br>&g=
t;     present=0A<br>&gt;     or occurs regularly.=0A<br>&gt;     To provid=
e some illustiation I attach recordings and screens of the=0A<br>&gt;     r=
egistered distortions.=0A<br>&gt;      usrpb210_sine_rx_distoriton2.mp4=0A<=
br>&gt;     <https: drive.google.com=3D"" file=3D"" d=3D"" 1hif0dzy2ah7ipc1=
3nfudhok5hd0jem9m=3D"" view?usp=3D"drive_web">=0A<br>&gt;      usrpb210_sin=
e_rx_distoriton.mp4=0A<br>&gt;     <https: drive.google.com=3D"" file=3D"" =
d=3D"" 13niybdl6h4w0akdf28keontnzkuscuaw=3D"" view?usp=3D"drive_web">=0A<br=
>&gt;=0A<br>&gt;     I tried to debug this problem but it appears to be rel=
ated to=0A<br>&gt;     sample rate,=0A<br>&gt;     TX tone frequency, carri=
er frequency and gains. (I checked dynamic IQ=0A<br>&gt;     imbalance or g=
ain controls and changing of the parameters did not=0A<br>&gt;     affect=
=0A<br>&gt;     anything)=0A<br>&gt;     There are now underflow/overflow f=
lags present while I run the=0A<br>&gt;     flowchart.=0A<br>&gt;     The s=
ignal that is provided to both RX is identical ( RF=0A<br>&gt;     mini-cir=
cuits RF=0A<br>&gt;     splitter), and any outside interferences are limite=
d as the whole=0A<br>&gt;     setup is=0A<br>&gt;     connected via concent=
ric cables. I tried to set the number of=0A<br>&gt;     receive and=0A<br>&=
gt;     sent frames to 1024 to ensure continuity, but that didn't help.=0A<=
br>&gt;     It is strange that for some frequencies this phenomenon occurs=
=0A<br>&gt;     while for=0A<br>&gt;     others the phase difference varian=
ce is very low and there are no such=0A<br>&gt;     distortions.=0A<br>&gt;=
     Could You please explain the cause or propose some kind of=0A<br>&gt; =
    solution to this=0A<br>&gt;     issue?=0A<br>&gt;=0A<br>&gt;     Kind r=
egards,=0A<br>&gt;     Marcin Wachowiak=0A<br>&gt;     -------------- next =
part --------------=0A<br>&gt;     A message part incompatible with plain t=
ext digests has been=0A<br>&gt;     removed ...=0A<br>&gt;     Name: not av=
ailable=0A<br>&gt;     Type: text/html=0A<br>&gt;     Size: 4104 bytes=0A<b=
r>&gt;     Desc: not available=0A<br>&gt;=0A<br>&gt;     ------------------=
------------=0A<br>&gt;=0A<br>&gt;     Message: 4=0A<br>&gt;     Date: Mon,=
 02 Aug 2021 12:39:31 -0400=0A<br>&gt;     From: "Marcus D. Leech" <patchvo=
nbraun@gmail.com></patchvonbraun@gmail.com><br>&gt;     <mailto:patchvonbra=
un@gmail.com>&gt;=0A<br>&gt;     Subject: [USRP-users] Re: One RX channel o=
f B210 presents distorted=0A<br>&gt;             signal from splitter=0A<br=
>&gt;     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com=
>=0A<br>&gt;     Message-ID: &lt;61081FC3.1010007@gmail.com=0A<br>&gt;     =
<mailto:61081fc3.1010007@gmail.com>&gt;=0A<br>&gt;     Content-Type: multip=
art/alternative;=0A<br>&gt;             boundary=3D"------------05020402010=
6080302070102"=0A<br>&gt;=0A<br>&gt;     On 08/02/2021 12:37 PM, Marcin Wac=
howiak wrote:=0A<br>&gt;     &gt; Hello,=0A<br>&gt;     &gt; I am working o=
n a phase coherent application using USRP B210. As=0A<br>&gt;     the=0A<br=
>&gt;     &gt; phase difference between RX channels of B210 is relatively s=
table I=0A<br>&gt;     &gt; wanted to see how it behaves across the whole f=
requency range. I=0A<br>&gt;     &gt; performed some measurements and unfor=
tunately for some=0A<br>&gt;     frequencies I=0A<br>&gt;     &gt; observed=
 strange distortions. The setup consists of a TX USRP, RF=0A<br>&gt;     &g=
t; splitter, matched cables and a second USRP with both RX channels=0A<br>&=
gt;     &gt; connected to the splitter.=0A<br>&gt;     &gt; Screams documen=
ting the distortions:=0A<br>&gt;     &gt;=0A<br>&gt;     https://drive.goog=
le.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing=0A<br>=
&gt;     &gt; The received sine wave should have quite similar shape and sp=
ectral=0A<br>&gt;     &gt; properties across both RX channels of USRP.=0A<b=
r>&gt;     &gt; What I observe instead is a symmetrical harmonic tone at on=
e of the=0A<br>&gt;     &gt; RX, when the other does not record it.=0A<br>&=
gt;     &gt; There are also random distortions in one of the RX channels=0A=
<br>&gt;     looking as=0A<br>&gt;     &gt; if the sine signal was split an=
d shifted at some point in time=0A<br>&gt;     (looks=0A<br>&gt;     &gt; l=
ike a some sort of buffer issue)=0A<br>&gt;     &gt; This kind of distortio=
n for some settings persists for some is not=0A<br>&gt;     &gt; present or=
 occurs regularly.=0A<br>&gt;     &gt; To provide some illustiation I attac=
h recordings and screens of the=0A<br>&gt;     &gt; registered distortions.=
=0A<br>&gt;     &gt; usrpb210_sine_rx_distoriton2.mp4=0A<br>&gt;     &gt;=
=0A<br>&gt;     <https: drive.google.com=3D"" file=3D"" d=3D"" 1hif0dzy2ah7=
ipc13nfudhok5hd0jem9m=3D"" view?usp=3D"drive_web">=0A<br>&gt;     &gt; usrp=
b210_sine_rx_distoriton.mp4=0A<br>&gt;     &gt;=0A<br>&gt;     <https: driv=
e.google.com=3D"" file=3D"" d=3D"" 13niybdl6h4w0akdf28keontnzkuscuaw=3D"" v=
iew?usp=3D"drive_web">=0A<br>&gt;     &gt;=0A<br>&gt;     &gt; I tried to d=
ebug this problem but it appears to be related to=0A<br>&gt;     sample=0A<=
br>&gt;     &gt; rate, TX tone frequency, carrier frequency and gains. (I c=
hecked=0A<br>&gt;     &gt; dynamic IQ imbalance or gain controls and changi=
ng of the=0A<br>&gt;     parameters=0A<br>&gt;     &gt; did not affect anyt=
hing)=0A<br>&gt;     &gt; There are now underflow/overflow flags present wh=
ile I run the=0A<br>&gt;     &gt; flowchart. The signal that is provided to=
 both RX is identical ( RF=0A<br>&gt;     &gt; mini-circuits RF splitter), =
and any outside interferences are=0A<br>&gt;     limited=0A<br>&gt;     &gt=
; as the whole setup is connected via concentric cables. I tried=0A<br>&gt;=
     to set=0A<br>&gt;     &gt; the number of receive and sent frames to 10=
24 to ensure continuity,=0A<br>&gt;     &gt; but that didn't help.=0A<br>&g=
t;     &gt; It is strange that for some frequencies this phenomenon occurs=
=0A<br>&gt;     while=0A<br>&gt;     &gt; for others the phase difference v=
ariance is very low and there=0A<br>&gt;     are no=0A<br>&gt;     &gt; suc=
h distortions.=0A<br>&gt;     &gt; Could You please explain the cause or pr=
opose some kind of=0A<br>&gt;     solution to=0A<br>&gt;     &gt; this issu=
e?=0A<br>&gt;     &gt;=0A<br>&gt;     &gt; Kind regards,=0A<br>&gt;     &gt=
; Marcin Wachowiak=0A<br>&gt;     &gt;=0A<br>&gt;     &gt;=0A<br>&gt;     &=
gt; _______________________________________________=0A<br>&gt;     &gt; USR=
P-users mailing list -- usrp-users@lists.ettus.com=0A<br>&gt;     <mailto:u=
srp-users@lists.ettus.com>=0A<br>&gt;     &gt; To unsubscribe send an email=
 to usrp-users-leave@lists.ettus.com=0A<br>&gt;     <mailto:usrp-users-leav=
e@lists.ettus.com>=0A<br>&gt;     What are your signal levels going into th=
e RX USRP?=0A<br>&gt;=0A<br>&gt;     They need to be well below -20dBm or s=
o to protect against=0A<br>&gt;     non-linearity, and even then, that's aw=
fully loud.=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;     ----=
---------- next part --------------=0A<br>&gt;     A message part incompati=
ble with plain text digests has been=0A<br>&gt;     removed ...=0A<br>&gt; =
    Name: not available=0A<br>&gt;     Type: text/html=0A<br>&gt;     Size:=
 6081 bytes=0A<br>&gt;     Desc: not available=0A<br>&gt;=0A<br>&gt;     --=
----------------------------=0A<br>&gt;=0A<br>&gt;     Subject: Digest Foot=
er=0A<br>&gt;=0A<br>&gt;     ______________________________________________=
_=0A<br>&gt;     USRP-users mailing list -- usrp-users@lists.ettus.com=0A<b=
r>&gt;     <mailto:usrp-users@lists.ettus.com>=0A<br>&gt;     To unsubscrib=
e send an email to usrp-users-leave@lists.ettus.com=0A<br>&gt;     <mailto:=
usrp-users-leave@lists.ettus.com>=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;     ----=
--------------------------=0A<br>&gt;=0A<br>&gt;     End of USRP-users Dige=
st, Vol 132, Issue 2=0A<br>&gt;     ***************************************=
***=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; ___________________________=
____________________=0A<br>&gt; USRP-users mailing list -- usrp-users@lists=
.ettus.com=0A<br>&gt; To unsubscribe send an email to usrp-users-leave@list=
s.ettus.com=0A<br>=0A<br>-------------- next part --------------=0A<br>A me=
ssage part incompatible with plain text digests has been removed ...=0A<br>=
Name: not available=0A<br>Type: text/html=0A<br>Size: 24310 bytes=0A<br>Des=
c: not available=0A<br>=0A<br>------------------------------=0A<br>=0A<br>S=
ubject: Digest Footer=0A<br>=0A<br>________________________________________=
_______=0A<br>USRP-users mailing list -- usrp-users@lists.ettus.com=0A<br>T=
o unsubscribe send an email to usrp-users-leave@lists.ettus.com=0A<br>=0A<b=
r>=0A<br>------------------------------=0A<br>=0A<br>End of USRP-users Dige=
st, Vol 132, Issue 8=0A<br>******************************************=0A<br=
>_______________________________________________<br>USRP-users mailing list=
 -- usrp-users@lists.ettus.com<br>To unsubscribe send an email to usrp-user=
s-leave@lists.ettus.com<br></mailto:usrp-users-leave@lists.ettus.com></mail=
to:usrp-users@lists.ettus.com></mailto:usrp-users-leave@lists.ettus.com></m=
ailto:usrp-users@lists.ettus.com></https:></https:></mailto:61081fc3.101000=
7@gmail.com></mailto:usrp-users@lists.ettus.com></mailto:patchvonbraun@gmai=
l.com></https:></https:></mailto:caofh71xdrz7a%2bxu89t-6gewy4aa_hmnfb%2b-0a=
ege6y-f4zvnla@mail.gmail.com></mailto:usrp-users@lists.ettus.com></mailto:m=
arcin.r.wachowiak@gmail.com></mailto:usrp-users-leave@lists.ettus.com></mai=
lto:usrp-users@lists.ettus.com></mailto:guy@eastroad.org></mailto:17bfd25f-=
4714-4789-ab3f-4503a89b25f2@gmail.com></mailto:usrp-users@lists.ettus.com><=
/mailto:guy@eastroad.org></mailto:richardlstanley@gmail.com></mailto:823ade=
77-dfb9-4632-b924-c31c5b76b128@eastroad.org></mailto:usrp-users@lists.ettus=
.com></mailto:guy@eastroad.org></mailto:usrp-users-owner@lists.ettus.com></=
mailto:usrp-users-request@lists.ettus.com></mailto:usrp-users@lists.ettus.c=
om></mailto:usrp-users-request@lists.ettus.com></patchvonbraun@gmail.com></=
mailto:usrp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lists.ett=
us.com></mailto:usrp-users@lists.ettus.com></mailto:usrp-users@lists.ettus.=
com></mailto:usrp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lis=
ts.ettus.com></mailto:usrp-users-leave@lists.ettus.com></mailto:usrp-users-=
leave@lists.ettus.com></mailto:usrp-users-leave@lists.ettus.com></mailto:us=
rp-users-leave@lists.ettus.com></mailto:usrp-users-leave@lists.ettus.com></=
mailto:usrp-users-leave@lists.ettus.com></mailto:usrp-users@lists.ettus.com=
></mailto:usrp-users@lists.ettus.com></mailto:usrp-users@lists.ettus.com></=
mailto:usrp-users@lists.ettus.com></mailto:usrp-users@lists.ettus.com></mai=
lto:usrp-users@lists.ettus.com></mailto:usrp-users@lists.ettus.com></mailto=
:usrp-users@lists.ettus.com></mailto:vladicasark@gmail.com></mailto:vladica=
sark@gmail.com></mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.co=
m></mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.com></mailto:vl=
adicasark@gmail.com></mailto:vladicasark@gmail.com></mailto:vladicasark@gma=
il.com></mailto:vladicasark@gmail.com></mailto:vladicasark@gmail.com></mail=
to:vladicasark@gmail.com></mailto:vladicasark@gmail.com></mailto:vladicasar=
k@gmail.com></mailto:vladicasark@gmail.com></e04c8632-3f91-31d3-bdfc-bd7e76=
4d7cd8@gmail.com></usrp-users@lists.ettus.com></michael.dickens@ettus.com><=
/vladicasark@gmail.com></usrp-users-request@lists.ettus.com></div></blockqu=
ote>=0A                                        </div></div>
------=_NextPart_13161088.797861521985--

--===============7782672987380618182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7782672987380618182==--

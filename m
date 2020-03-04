Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F9E179C76
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 00:28:49 +0100 (CET)
Received: from [::1] (port=46214 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9dRV-0002D5-Ch; Wed, 04 Mar 2020 18:28:45 -0500
Received: from mail-qv1-f45.google.com ([209.85.219.45]:38840)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j9dRR-0001yz-5m
 for usrp-users@lists.ettus.com; Wed, 04 Mar 2020 18:28:41 -0500
Received: by mail-qv1-f45.google.com with SMTP id g16so1620722qvz.5
 for <usrp-users@lists.ettus.com>; Wed, 04 Mar 2020 15:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Iln6CE0uCXo/vXwlQ58PpDhq2GvAT239MFP3edQQ9xE=;
 b=dRE3ZDUhkVroogyvWT3RhSNAgvpCbGamcDL8Zox3g7jTIMPtFds52pwGtQzqPsDgYp
 0+PA6ydj8X9g/cyL6+Xmgb7GxFhk8bJKozFIPFNYWV26TPdrtinBE9HCFUV6oJwpVtZx
 4gYHkZUfUvaURbVnhPPjEPWWBRjUCeylZX/cQo4CsAvJgubUYMvcSodRmcOPaHbtblqL
 /xAy9s57mAuvL/6Xd+mlqScRT9uJvSrZ+1gsbGWX8ohpcinkwyBa6in8Ep3V252E+W3F
 +XbC64lM/naDRxjeCF8Xe1L0vSc4Q397lyPlVxAUMsifOS0gtw+SbuhA/JdptPZueAPT
 +a4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Iln6CE0uCXo/vXwlQ58PpDhq2GvAT239MFP3edQQ9xE=;
 b=QIOnNE7+BK1Ubyu26fRP66GJuVcxn7yVro0nJe7JOfuxJsq4tyETW14Tdp4BrDtzx+
 3RNSPh5yA87tdB2/Z9SDpXtiHtjGfB6qMXGWBHTL8Gpcmv6ncBi4H27N6nn/2Tqm+DBl
 MzwdKx+WX1iQYMIk/Y+QWO1g4kOQAbcHtWEC1qwAZIRidkbKi9dSYKIzjdVAFPkM2+z0
 KfB6g56yKkADL+n72LFm8zlvnDR+4zXkOYpLGFS1g6C3BXY8g5RA2z8fE5qq0H3sfipx
 xNj++YHtSzLVA3rOgfk/qW3P6BEjJXkUvQ/58EIeNBGej/4lvwzdBBtfMsbk0o/mKnF7
 ab1Q==
X-Gm-Message-State: ANhLgQ2WgdFv4g7y3Ef+/SAGU2HmFILbEafYr9RI95hv/Rh4W81hjRHm
 r3UzC0Quxw385NtihZ3hG6E=
X-Google-Smtp-Source: ADFU+vv5uoHfywxZ6dxZ4QshnqaKpDjWdpxmPKe/xz+VXZj1eO3BO2wVhhP3qMUrLiK7HikD/S5nVw==
X-Received: by 2002:a0c:eb92:: with SMTP id x18mr4261284qvo.15.1583364480529; 
 Wed, 04 Mar 2020 15:28:00 -0800 (PST)
Received: from [172.20.0.187] (cmr-208-97-88-52.cr.net.cable.rogers.com.
 [208.97.88.52])
 by smtp.gmail.com with ESMTPSA id 3sm15569334qte.59.2020.03.04.15.27.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Mar 2020 15:27:59 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 4 Mar 2020 18:27:58 -0500
Message-Id: <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
In-Reply-To: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (17D50)
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Lukas Haase <lukashaase@gmx.at>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4404985370443460757=="
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


--===============4404985370443460757==
Content-Type: multipart/alternative; boundary=Apple-Mail-DD263CFE-C36F-4CF3-BE9F-4536E9FBF1F6
Content-Transfer-Encoding: 7bit


--Apple-Mail-DD263CFE-C36F-4CF3-BE9F-4536E9FBF1F6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

When you select one of the PPS synch options in a GRC USRP block it will set=
 the time to zero.=20

Easy enough to modify the code to do something more sophisticated, but knowi=
ng that it will be set to zero helps you know how to proceed.=20



Sent from my iPhone

> On Mar 4, 2020, at 12:43 PM, Rob Kossler via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Regarding #2)
> I don't think that what you want is a "command" tag, but rather a "time st=
amp tag" which I believe is "tx_time" based on the link you provided to the d=
ocumentation.  The documentation says, "The timestamp tag value is a PMT tup=
le of the following: (uint64 seconds, double fractional seconds)".  If I am c=
orrect, perhaps the code snipped you provided will not come into play.
>=20
> Just to be clear, I don't think you should need to do both #1 and #2.  But=
, I "believe" that either method should be possible to accomplish the goal o=
f attaching a time stamp to the streaming. =20
>=20
> Also, keep in mind that the time stamp that you provide to the DUC block f=
or the freq change is related to the time stamp you attach to the streaming s=
amples.  Let me explain with a few remarks:
> If you apply the time stamp of 0.5 to the streaming samples, then the firs=
t sample will have time 0.5 and then UHD will keep track of all subsequent s=
amples to know the absolute time of any given sample.  I am assuming that on=
ce you start transmitting you will keep transmitting continuously until the f=
low graph ends.
> If you then start hopping your DUC with time stamps such as 0.6, 0.7, 0.8,=
 etc, then UHD should apply the hop at the correct part of the stream since i=
t knows the time of each sample.
> But, be sure that you know for certain that the UHD time is truly set to z=
ero at the start of the run.  Otherwise, if it is at some arbitrary value at=
 startup such as 9876.1 seconds, and you are using time stamps to set your D=
UC tuning such as "get_time_now()+0.5", then it will want to apply the tunin=
g at 9876.6 seconds. Thus, if you time stamped your tx stream at 0.5 seconds=
, you will have a long time to wait before the tuning occurs. =20
> Rob
>=20
>> On Wed, Mar 4, 2020 at 12:13 PM Rob Kossler <rkossler@nd.edu> wrote:
>> Hi Lukas,
>> Let me respond to #1 right away.  The "set_start_time" function sets the t=
ime of the tx stream.  It does not set the "clock time" on the usrp.  If you=
 are indeed correct that the "clock time" on the usrp is initialized to 0.0 a=
t the start of the GR run, then you are lucky and all you should need to do i=
s use the "set_start_time" function with a time spec of something like 0.2 o=
r 0.5 (any time after 0.0 with perhaps a little delay built in).  To see if i=
t is working, you could set the time spec to something very large like 5.0 o=
r 10.0 and then you should see the GR run start up but no Tx for the next 5 o=
r 10 seconds.  Then the Tx should start.  Does that make sense?
>> Rob
>>=20
>>=20
>>> On Wed, Mar 4, 2020 at 12:06 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>> Hi Rob,
>>>=20
>>> 1.) I do not really understand how "set_start_time" is related to my pro=
blem and why this is what I need. Based on my experiments, the time is autom=
atically set to 0 when the flow diagram starts.
>>>=20
>>> I am also sure others must have used timed TX+RX but it does not seem so=
. No kidding, I am working on this since Dec and I still do not have it work=
ing. I left my traces various times on this and the gnuradio mailing list bu=
t I did not get help.
>>>=20
>>> 2.) I have played around using stream tags and was very happy that it wo=
rked but I found now that this is because gr-uhd does NOT attach a command t=
ime although the documentation says so.
>>>=20
>>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html:
>>> tx_command tag. The command is attached to a sample, and will executed b=
efore the sample is transmitted, and after the previous sample.
>>>=20
>>> However, in the code (usrp_sink_impl.cc:433, usrp_sink_impl::tag_work):
>>>=20
>>>         else if (pmt::equal(key, COMMAND_KEY)) {
>>>             if (my_tag_count !=3D samp0_count) {
>>>                 max_count =3D my_tag_count;
>>>                 break;
>>>             }
>>>             // TODO set the command time from the sample time
>>>             msg_handler_command(value);
>>>         }
>>>=20
>>> 3.) So I am really back to the start. What is generally a bit annoying i=
s that I have two objects for the same device (*one* USRP and "USRP Source"+=
"USRP Sink", both with their independent uhd::usrp::multi_usrp objects. My q=
uestion is, is it possible to just use "USRP Source" (this is where timed co=
mmands work) to execute the retuning for *both* RX+TX?
>>>=20
>>> 3.a.) Given: X310 with 2xUBX-160. What is the subdev spec if I wanted to=
 receive on all FOUR inputs??
>>> The problem is that both RX and TX frontends have the same name "0" (acc=
ording to uhd_usrp_probe).
>>>=20
>>> Two receivers, receiving both from "TX/RX" input of each UBX-160 would b=
e trivial: "A:0 B:0". However, how do I address "RX2"? Intuitively "A:0 A:1 B=
:0 B:1" but as said, both "TX/RX" and "RX2" are named "0".
>>> What would I do if I wanted to transmit from "TX/RX" of the second UBX a=
nd receive on all other boards?
>>>=20
>>> On the USRP Sink: "B:0"
>>> On the USP Source intuitively: "A:0 A:1 B:1" but that's wrong.
>>>=20
>>> 3.b.) In gr, there will be two multi_usrp objects: One for the receiver (=
member variable of USRP Source) and one for the transmitter (member variable=
 of USRP Sink).
>>> Can I set up a USRP Source that has two channels where the second one is=
 actually a TX channel? (only used for retuning via timed commands)?
>>>=20
>>>=20
>>> Thanks,
>>> Lukas
>>>=20
>>>=20
>>> =20
>>> =20
>>>=20
>>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 15:22 Uhr
>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>> Cc: "Sam Reiter" <sam.reiter@ettus.com>, "USRP-users@lists.ettus.com" <u=
srp-users@lists.ettus.com>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usin=
g a timed command
>>>=20
>>> I did a quick google search using "gnuradio uhd timed tx streaming". I f=
ound that the GR usrp_sink[https://www.gnuradio.org/doc/sphinx-3.7.7/uhd.htm=
l] has the function "set_start_time" which seems to be what you need.  The q=
uestion is: what time do you set?  Probably just something like "get_time_no=
w() + 0.1". It may be a bit tricky since this value is to be set before star=
ting the flow graph.  Maybe you could set it to some fixed constant like 0.5=
 and then when the flow graph starts you could execute a command to set_time=
_now() to 0.0.  Anyway, if this advice doesn't pan out, perhaps just search a=
round a bit in GR archives.  I'm sure others have successfully streamed with=
 timed Tx commands.
>>> Rob=20
>>>=20
>>> On Tue, Mar 3, 2020 at 3:00 PM Lukas Haase <lukashaase@gmx.at[mailto:luk=
ashaase@gmx.at]> wrote:
>>>=20
>>> Hi Sam, Hi Rob,
>>>=20
>>> This makes so much sense!
>>> I think you are right.
>>> And indeed, the issue I found only with TX, not RX.
>>>=20
>>>=20
>>> Could you think of a possible hack sending a "dummy command" to the RF b=
oard along with the timed tuning request?
>>>=20
>>>=20
>>> Regarding the sending of time stamps in the TX in gr-uhd, I am confused t=
hough. I do think this IS happening. I reproduce the work function of "USRP S=
ink" here:
>>>=20
>>> int usrp_sink_impl::work(int noutput_items,
>>>                          gr_vector_const_void_star& input_items,
>>>                          gr_vector_void_star& output_items)
>>> {
>>>     int ninput_items =3D noutput_items; // cuz it's a sync block
>>>=20
>>>     // default to send a mid-burst packet
>>>     _metadata.start_of_burst =3D false;
>>>     _metadata.end_of_burst =3D false;
>>>=20
>>>     // collect tags in this work()
>>>     const uint64_t samp0_count =3D nitems_read(0);
>>>     get_tags_in_range(_tags, 0, samp0_count, samp0_count + ninput_items)=
;
>>>     if (not _tags.empty())
>>>         this->tag_work(ninput_items);
>>>=20
>>>     if (not pmt::is_null(_length_tag_key)) {
>>>         // check if there is data left to send from a burst tagged with l=
ength_tag
>>>         // If a burst is started during this call to work(), tag_work() s=
hould have
>>>         // been called and we should have _nitems_to_send > 0.
>>>         if (_nitems_to_send > 0) {
>>>             ninput_items =3D std::min<long>(_nitems_to_send, ninput_item=
s);
>>>             // if we run out of items to send, it's the end of the burst=

>>>             if (_nitems_to_send - long(ninput_items) =3D=3D 0)
>>>                 _metadata.end_of_burst =3D true;
>>>         } else {
>>>             // There is a tag gap since no length_tag was found immediat=
ely following
>>>             // the last sample of the previous burst. Drop samples until=
 the next
>>>             // length_tag is found. Notify the user of the tag gap.
>>>             std::cerr << "tG" << std::flush;
>>>             // increment the timespec by the number of samples dropped
>>>             _metadata.time_spec +=3D ::uhd::time_spec_t(0, ninput_items,=
 _sample_rate);
>>>             return ninput_items;
>>>         }
>>>     }
>>>=20
>>>     boost::this_thread::disable_interruption disable_interrupt;
>>> #ifdef GR_UHD_USE_STREAM_API
>>>     // send all ninput_items with metadata
>>>     const size_t num_sent =3D _tx_stream->send(input_items, ninput_items=
, _metadata, 1.0);
>>> #else
>>>     const size_t num_sent =3D _dev->get_device()->send(input_items,
>>>                                                      ninput_items,
>>>                                                      _metadata,
>>>                                                      *_type,
>>>                                                      ::uhd::device::SEND=
_MODE_FULL_BUFF,
>>>                                                      1.0);
>>> #endif
>>>     boost::this_thread::restore_interruption restore_interrupt(disable_i=
nterrupt);
>>>=20
>>>     // if using length_tags, decrement items left to send by the number o=
f samples sent
>>>     if (not pmt::is_null(_length_tag_key) && _nitems_to_send > 0) {
>>>         _nitems_to_send -=3D long(num_sent);
>>>     }
>>>=20
>>>     // increment the timespec by the number of samples sent
>>>     _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_rat=
e);
>>>=20
>>>     // Some post-processing tasks if we actually transmitted the entire b=
urst
>>>     if (not _pending_cmds.empty() && num_sent =3D=3D size_t(ninput_items=
)) {
>>>         GR_LOG_DEBUG(d_debug_logger,
>>>                      boost::format("Executing %d pending commands.") %
>>>                          _pending_cmds.size());
>>>         BOOST_FOREACH (const pmt::pmt_t& cmd_pmt, _pending_cmds) {
>>>             msg_handler_command(cmd_pmt);
>>>         }
>>>         _pending_cmds.clear();
>>>     }
>>>=20
>>>     return num_sent;
>>> }
>>>=20
>>> =46rom this code, it can be seen that the data is transmitted including _=
metadata:
>>>=20
>>> const size_t num_sent =3D _tx_stream->send(input_items, ninput_items, _m=
etadata, 1.0);
>>>=20
>>> The "time_spec" is updated for each block that is sent out:
>>>=20
>>> _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_rate);
>>>=20
>>> Now you mentioned "has_time_spec" below. I extended to code in the follo=
wing way:
>>>=20
>>>     // increment the timespec by the number of samples sent
>>>     _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_rat=
e);
>>>     GR_LOG_DEBUG(d_debug_logger, boost::format("Setting metadata time_sp=
ec: %d:%f") % _metadata.time_spec.get_full_secs() % _metadata.time_spec.get_=
frac_secs());
>>>     _metadata.has_time_spec =3D true;
>>>=20
>>>=20
>>> To my understanding, gr-uhd now passes the correct timestamps on to UHD.=

>>> However, the timed command is still ignored.
>>>=20
>>>=20
>>> Thanks,
>>> Lukas
>>>=20
>>>=20
>>> PS: I will attempt to use the tagged stream ... but then I will have the=
 issue that I need to tune TX *plus* RX at the same time! Furthermore, the s=
treaming tags API is super rudimentary. Also, skimming the source code for t=
he tag processing, I am not sure if this would change anything.
>>>=20
>>>=20
>>>=20
>>>=20
>>> =20
>>> =20
>>> =20
>>>=20
>>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 13:25 Uhr
>>> Von: "Sam Reiter" <sam.reiter@ettus.com[mailto:sam.reiter@ettus.com]>
>>> An: "Rob Kossler" <rkossler@nd.edu[mailto:rkossler@nd.edu]>
>>> Cc: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at]>, "USRP-u=
sers@lists.ettus.com[mailto:USRP-users@lists.ettus.com]" <usrp-users@lists.e=
ttus.com[mailto:usrp-users@lists.ettus.com]>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usin=
g a timed command
>>>=20
>>> Everything Rob is saying is dead on - the "sense of time" for the radio i=
s a 64-bit counter within the radio core that other blocks (like the DDC and=
 DUC) don't have access to. Those blocks need to derive a sense of time from=
 the timestamps of CHDR packets passing through them. I just wrapped up a ne=
w app note that covers this (among other synchronization-related topics):
>>> =20
>>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_U=
HD#Clocking_and_Timekeeping_in_the_USRP[https://kb.ettus.com/Synchronizing_U=
SRP_Events_Using_Timed_Commands_in_UHD#Clocking_and_Timekeeping_in_the_USRP]=

>>> =20
>>> Lukas, I would doubt that this is an undiscovered bug as much as it is a=
n issue with implementation. If this were in C++, you'd want to set the 'has=
_time_spec' and 'time_spec' fields of your TX metadata for at least 1 packet=
 to impart a sense of time on the DUC:
>>> =20
>>> https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html[https:/=
/files.ettus.com/manual/structuhd_1_1tx__metadata__t.html][https://files.ett=
us.com/manual/structuhd_1_1tx__metadata__t.html%5Bhttps://files.ettus.com/ma=
nual/structuhd_1_1tx__metadata__t.html%5D]
>>> =20
>>> I just spoke with someone on my end who said you need to use stream tags=
 to do this, but again, I don't currently have much direction for how that w=
ould be implemented in your code.
>>> =20
>>>=20
>>> Sam Reiter =20
>>>=20
>>> On Tue, Mar 3, 2020 at 11:48 AM Rob Kossler <rkossler@nd.edu[mailto:rkos=
sler@nd.edu][mailto:rkossler@nd.edu[mailto:rkossler@nd.edu]]> wrote:
>>> Also, note that there is no corresponding issue on receive because the R=
x radio always inserts the time stamp in the sample stream. So, I guess you w=
ould not see this with the DDC.
>>> Rob=20
>>>=20
>>> On Tue, Mar 3, 2020 at 12:43 PM Rob Kossler <rkossler@nd.edu[mailto:rkos=
sler@nd.edu][mailto:rkossler@nd.edu[mailto:rkossler@nd.edu]]> wrote:
>>>=20
>>> Hi Lukas,
>>> The FPGA image on the USRP is divided into blocks such as the DUC block a=
nd the Radio block.  The latter controls the RF daughterboard and has access=
 to the device clock.  So, when you provide a timed command to the Radio blo=
ck (such as for tuning the RF) it can implement the command at the specified=
 time by comparing to the device clock.  The DUC block does not have access t=
o the MB clock and so when you give it a timed command, it monitors the inco=
ming sample stream to extract the time. If the sample stream does not includ=
e a time stamp, the command never executes.  Don't think of this as a bug, b=
ut rather as a design limitation.
>>> =20
>>> When I work directly with UHD from C++, I use the function rx_streamer::=
issue_stream_command() which has options to stream data with no time stamp o=
r with a time stamp.  When using timed commands with DUC or DDC, I must incl=
ude the time stamp or else the command will never be executed.  But, with GR=
, I don't know how to specify the corresponding options.
>>> Rob=20
>>>=20
>>> On Tue, Mar 3, 2020 at 12:29 PM Lukas Haase <lukashaase@gmx.at[mailto:lu=
kashaase@gmx.at][mailto:lukashaase@gmx.at[mailto:lukashaase@gmx.at]]> wrote:=
Hi Sam, Hi Rob,
>>>=20
>>> Thanks for following up on this!
>>> I am very happy you were able to reproduce this ... which means that at l=
east an issue exists :)
>>>=20
>>> What Sam suggests makes sense even though hard to believe for me:
>>>=20
>>> 1. How could something like that go unnoticed for so long? (I am sure I a=
m not the first performing digital tuning)
>>> 2. In the past I got successful phase coherence using automatic tuning (=
passing center frequency + offset to tune_request_t and using integer-N tuni=
ng) using timed commands. This did not work reliably and only for certain fr=
equencies but in my opinion this should have INCLUDED the DUC tuning. If the=
 DUC retune wouldn't have been executed as part of this automatic tuning, I c=
ould not have gotten phase coherence (and actually, not even the desired fre=
quency).
>>>=20
>>> The reason why I am only doing DUC tuning now is to avoid all the hassle=
 with integer-N tuning, PLL retuning and settling time.
>>>=20
>>> Sam, what is the "radio block" you were talking about?
>>>=20
>>> Anyway, would it be worthwile to attempt debugging this is absence of gr=
?
>>> The only reason this prevented me from doing is that I would need to man=
ually create the baseband samples and continuously stream them out while in p=
arallel do the retuning.
>>> I am not too familiar with UHD on its own but I assume this would be ver=
y complicated, require multithreading etc.
>>> Do you have any demo code that could be easily modified for this scenari=
o?
>>>=20
>>> Best,
>>> Lukas
>>>=20
>>>=20
>>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 12:08 Uhr
>>> Von: "Sam Reiter" <sam.reiter@ettus.com[mailto:sam.reiter@ettus.com][mai=
lto:sam.reiter@ettus.com[mailto:sam.reiter@ettus.com]]>
>>> An: "Rob Kossler" <rkossler@nd.edu[mailto:rkossler@nd.edu][mailto:rkossl=
er@nd.edu[mailto:rkossler@nd.edu]]>
>>> Cc: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at][mailto:lu=
kashaase@gmx.at[mailto:lukashaase@gmx.at]]>, "USRP-users@lists.ettus.com[mai=
lto:USRP-users@lists.ettus.com][mailto:USRP-users@lists.ettus.com[mailto:USR=
P-users@lists.ettus.com]]" <usrp-users@lists.ettus.com[mailto:usrp-users@lis=
ts.ettus.com][mailto:usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettu=
s.com]]>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usin=
g a timed command
>>>=20
>>> For what it's worth, I was able to reproduce the behavior described here=
, but didn't get to dig into it much. My leading suspicion would be what Rob=
 mentioned about timestamping. Lukas' code sets a command time, but I'm not c=
lear on how timestamp metadata for packets being sent to the radio are handl=
ed. Might be a good question to loop the discuss-gnuradio mailing list in on=
?
>>>=20
>>> =20
>>>=20
>>> Sam Reiter =20
>>>=20
>>> On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users <usrp-users@l=
ists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:usrp-users@lists.et=
tus.com[mailto:usrp-users@lists.ettus.com]][mailto:usrp-users@lists.ettus.co=
m[mailto:usrp-users@lists.ettus.com][mailto:usrp-users@lists.ettus.com[mailt=
o:usrp-users@lists.ettus.com]]]> wrote:
>>> I wonder if the issue is related to a missing time stamp on the baseband=
 samples going from GR to UHD.  If the stream does not have a time stamp, th=
e DUC is unable to apply the timed command because the DUC does not really k=
now the time - it must pull the time from the streaming samples. This is in c=
ontrast to the radio block which does have access to time and can apply time=
d commands by referring to the motherboard clock.
>>> =20
>>> I am not too familiar with GR so I'm not sure how to know if GR is putti=
ng a time stamp on the streaming samples.
>>> Rob=20
>>>=20
>>> On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users <usrp-users@l=
ists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:usrp-users@lists.et=
tus.com[mailto:usrp-users@lists.ettus.com]][mailto:usrp-users@lists.ettus.co=
m[mailto:usrp-users@lists.ettus.com][mailto:usrp-users@lists.ettus.com[mailt=
o:usrp-users@lists.ettus.com]]]> wrote:Hi Marcus,
>>>=20
>>> Thank you that would be amazing!
>>>=20
>>> I followed the tutorial and built everything from source:
>>>=20
>>> $ lsb_release -a
>>> No LSB modules are available.
>>> Distributor ID: Ubuntu
>>> Description:    Ubuntu 18.04.4 LTS
>>> Release:        18.04
>>> Codename:       bionic
>>> $ uname -a
>>> Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC=
 2020 x86_64 x86_64 x86_64 GNU/Linux
>>> $ cd uhd
>>> $ git status
>>> HEAD detached at v3.15.0.0
>>> $ cd ../gnuradio
>>> $ git status
>>> HEAD detached at v3.7.14.0
>>>=20
>>>=20
>>> Thank you!
>>>=20
>>> Lukas
>>>=20
>>>=20
>>>=20
>>> PS: For some reason I sometimes do not get responses from this list. I j=
ust saw it looking at the mailman archives. Hence I cannot respond (to keep h=
eaders intact) but need to create a new message and manually "quote". I hope=
 that still preserves the context somehow.
>>>=20
>>>=20
>>>=20
>>> Marcus Leech wrote:
>>> > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>>> >> Hi again,
>>> >>
>>> >> I created a minimum example (gnuradio) that shows the issue described=
 below.
>>> >> To summarize: Retuning to a different dsp frequency on an USRP X310 (=
+UBX160) does not work (command ignored) ONLY if a timed command (in future i=
s used).
>>> >> The code shows it in a simple manner. Commenting out the single line w=
ith set_command_time makes the example work.
>>> >>
>>> >> I am absolutely out of ideas and would appreciate any input!
>>> >>
>>> >> Best,
>>> >> Lukas
>>> > Lukas.
>>> >
>>> > Thanks for sticking with this.  I'll have a discussion with Ettus R&D t=
o
>>> > see if this is a known issue and/or if there's a workaround.
>>> >
>>> > Remind me which version of UHD you're using?
>>>=20
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:USR=
P-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]][mailto:USRP-user=
s@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:USRP-users@lists=
.ettus.com[mailto:USRP-users@lists.ettus.com]]]
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com______=
_________________________________________
>>> USRP-users[http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com_______________________________________________USRP-users][http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com______________________=
_________________________USRP-users%5Bhttp://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com_______________________________________________U=
SRP-users%5D] mailing list
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:USR=
P-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]][mailto:USRP-user=
s@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:USRP-users@lists=
.ettus.com[mailto:USRP-users@lists.ettus.com]]]
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com[http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com][http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5Bhttp://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com%5D]
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-DD263CFE-C36F-4CF3-BE9F-4536E9FBF1F6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">When you select one of the PPS synch option=
s in a GRC USRP block it will set the time to zero.&nbsp;<div><br></div><div=
>Easy enough to modify the code to do something more sophisticated, but know=
ing that it will be set to zero helps you know how to proceed.&nbsp;</div><d=
iv><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Mar 4, 2020, at 12:43 PM, Rob Koss=
ler via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"l=
tr"><div dir=3D"ltr">Regarding #2)<div>I don't think that what you want is a=
 "command" tag, but rather a "time stamp tag" which I believe is "tx_time" b=
ased on the link you provided to the documentation.&nbsp; The documentation s=
ays, "The timestamp tag value is a PMT tuple of the following: (uint64 secon=
ds, double fractional seconds)".&nbsp; If I am correct, perhaps the code sni=
pped you provided will not come into play.</div><div><br></div><div>Just to b=
e clear, I don't think you should need to do both #1 and #2.&nbsp; But, I "b=
elieve" that either method should be possible to accomplish the goal of atta=
ching a time stamp to the streaming.&nbsp;&nbsp;</div><div><br></div><div>Al=
so, keep in mind that the time stamp that you provide to the DUC block for t=
he freq change is related to the time stamp you attach to the streaming samp=
les.&nbsp; Let me explain with a few remarks:</div><div><ul><li>If you apply=
 the time stamp of 0.5 to the streaming samples, then the first sample will h=
ave time 0.5 and then UHD will keep track of all subsequent samples to know t=
he absolute time of any given sample.&nbsp; I am assuming that once you star=
t transmitting you will keep transmitting continuously until the flow graph e=
nds.</li><li>If you then start hopping your DUC with time stamps such as 0.6=
, 0.7, 0.8, etc, then UHD should apply the hop at the correct part of the st=
ream since it knows the time of each sample.</li><li>But, be sure that you k=
now for certain that the UHD time is truly set to zero at the start of the r=
un.&nbsp; Otherwise, if it is at some arbitrary value at startup such as 987=
6.1 seconds, and you are using time stamps to set your DUC tuning such as "g=
et_time_now()+0.5", then it will want to apply the tuning at 9876.6 seconds.=
 Thus, if you time stamped your tx stream at 0.5 seconds, you will have a lo=
ng time to wait before the tuning occurs.&nbsp;&nbsp;</li></ul></div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Mar 4, 2020 at 12:13 PM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Lukas,</div><div>Let me r=
espond to #1 right away.&nbsp; The "set_start_time" function sets the time o=
f the tx stream.&nbsp; It does not set the "clock time" on the usrp.&nbsp; I=
f you are indeed correct that the "clock time" on the usrp is initialized to=
 0.0 at the start of the GR run, then you are lucky and all you should need t=
o do is use the "set_start_time" function with a time spec of something like=
 0.2 or 0.5 (any time after 0.0 with perhaps a little delay built in).&nbsp;=
 To see if it is working, you could set the time spec to something very larg=
e like 5.0 or 10.0 and then you should see the GR run start up but no Tx for=
 the next 5 or 10 seconds.&nbsp; Then the Tx should start.&nbsp; Does that m=
ake sense?</div><div>Rob</div><div><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 4, 2020 at 12:06 PM Lukas H=
aase &lt;<a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@g=
mx.at</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi Rob,<br>
<br>
1.) I do not really understand how "set_start_time" is related to my problem=
 and why this is what I need. Based on my experiments, the time is automatic=
ally set to 0 when the flow diagram starts.<br>
<br>
I am also sure others must have used timed TX+RX but it does not seem so. No=
 kidding, I am working on this since Dec and I still do not have it working.=
 I left my traces various times on this and the gnuradio mailing list but I d=
id not get help.<br>
<br>
2.) I have played around using stream tags and was very happy that it worked=
 but I found now that this is because gr-uhd does NOT attach a command time a=
lthough the documentation says so.<br>
<br>
<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink=
.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnuradio.org/doc/dox=
ygen/classgr_1_1uhd_1_1usrp__sink.html</a>:<br>
tx_command tag. The command is attached to a sample, and will executed befor=
e the sample is transmitted, and after the previous sample.<br>
<br>
However, in the code (usrp_sink_impl.cc:433, usrp_sink_impl::tag_work):<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; else if (pmt::equal(key, COMMAND_KEY)) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (my_tag_count !=3D samp0_count)=
 {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; max_count =3D my_tag=
_count;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // TODO set the command time from t=
he sample time<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; msg_handler_command(value);<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
<br>
3.) So I am really back to the start. What is generally a bit annoying is th=
at I have two objects for the same device (*one* USRP and "USRP Source"+"USR=
P Sink", both with their independent uhd::usrp::multi_usrp objects. My quest=
ion is, is it possible to just use "USRP Source" (this is where timed comman=
ds work) to execute the retuning for *both* RX+TX?<br>
<br>
3.a.) Given: X310 with 2xUBX-160. What is the subdev spec if I wanted to rec=
eive on all FOUR inputs??<br>
The problem is that both RX and TX frontends have the same name "0" (accordi=
ng to uhd_usrp_probe).<br>
<br>
Two receivers, receiving both from "TX/RX" input of each UBX-160 would be tr=
ivial: "A:0 B:0". However, how do I address "RX2"? Intuitively "A:0 A:1 B:0 B=
:1" but as said, both "TX/RX" and "RX2" are named "0".<br>
What would I do if I wanted to transmit from "TX/RX" of the second UBX and r=
eceive on all other boards?<br>
<br>
On the USRP Sink: "B:0"<br>
On the USP Source intuitively: "A:0 A:1 B:1" but that's wrong.<br>
<br>
3.b.) In gr, there will be two multi_usrp objects: One for the receiver (mem=
ber variable of USRP Source) and one for the transmitter (member variable of=
 USRP Sink).<br>
Can I set up a USRP Source that has two channels where the second one is act=
ually a TX channel? (only used for retuning via timed commands)?<br>
<br>
<br>
Thanks,<br>
Lukas<br>
<br>
<br>
&nbsp;<br>
&nbsp;<br>
<br>
Gesendet:&nbsp;Dienstag, 03. M=C3=A4rz 2020 um 15:22 Uhr<br>
Von:&nbsp;"Rob Kossler" &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;<br>
An:&nbsp;"Lukas Haase" &lt;<a href=3D"mailto:lukashaase@gmx.at" target=3D"_b=
lank">lukashaase@gmx.at</a>&gt;<br>
Cc:&nbsp;"Sam Reiter" &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"=
_blank">sam.reiter@ettus.com</a>&gt;, "<a href=3D"mailto:USRP-users@lists.et=
tus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>" &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>&gt;<br>
Betreff:&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usi=
ng a timed command<br>
<br>
I did a quick google search using "gnuradio uhd timed tx streaming". I found=
 that the GR usrp_sink[<a href=3D"https://www.gnuradio.org/doc/sphinx-3.7.7/=
uhd.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnuradio.org/doc/=
sphinx-3.7.7/uhd.html</a>] has the function "set_start_time" which seems to b=
e what you need.&nbsp; The question is: what time do you set?&nbsp; Probably=
 just something like "get_time_now()&nbsp;+ 0.1". It may be a bit tricky sin=
ce this value is to be set before starting the flow graph.&nbsp; Maybe you c=
ould set it to some fixed constant like 0.5 and then when the flow graph sta=
rts you could execute a command to set_time_now() to 0.0.&nbsp; Anyway, if t=
his advice doesn't pan out, perhaps just search around a bit in GR archives.=
&nbsp; I'm sure others have successfully streamed with timed Tx commands.<br=
>
Rob&nbsp;<br>
<br>
On Tue, Mar 3, 2020 at 3:00 PM Lukas Haase &lt;<a href=3D"mailto:lukashaase@=
gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:luk=
ashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt; wrote:<br>
<br>
Hi Sam, Hi Rob,<br>
<br>
This makes so much sense!<br>
I think you are right.<br>
And indeed, the issue I found only with TX, not RX.<br>
<br>
<br>
Could you think of a possible hack sending a "dummy command" to the RF board=
 along with the timed tuning request?<br>
<br>
<br>
Regarding the sending of time stamps in the TX in gr-uhd, I am confused thou=
gh. I do think this IS happening. I reproduce the work function of "USRP Sin=
k" here:<br>
<br>
int usrp_sink_impl::work(int noutput_items,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;gr_vector_const_void_star&amp; input_items,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;gr_vector_void_star&amp; output_items)<br>
{<br>
&nbsp; &nbsp; int ninput_items =3D noutput_items; // cuz it's a sync block<b=
r>
<br>
&nbsp; &nbsp; // default to send a mid-burst packet<br>
&nbsp; &nbsp; _metadata.start_of_burst =3D false;<br>
&nbsp; &nbsp; _metadata.end_of_burst =3D false;<br>
<br>
&nbsp; &nbsp; // collect tags in this work()<br>
&nbsp; &nbsp; const uint64_t samp0_count =3D nitems_read(0);<br>
&nbsp; &nbsp; get_tags_in_range(_tags, 0, samp0_count, samp0_count + ninput_=
items);<br>
&nbsp; &nbsp; if (not _tags.empty())<br>
&nbsp; &nbsp; &nbsp; &nbsp; this-&gt;tag_work(ninput_items);<br>
<br>
&nbsp; &nbsp; if (not pmt::is_null(_length_tag_key)) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; // check if there is data left to send from a bu=
rst tagged with length_tag<br>
&nbsp; &nbsp; &nbsp; &nbsp; // If a burst is started during this call to wor=
k(), tag_work() should have<br>
&nbsp; &nbsp; &nbsp; &nbsp; // been called and we should have _nitems_to_sen=
d &gt; 0.<br>
&nbsp; &nbsp; &nbsp; &nbsp; if (_nitems_to_send &gt; 0) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ninput_items =3D std::min&lt;long&=
gt;(_nitems_to_send, ninput_items);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // if we run out of items to send,=
 it's the end of the burst<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (_nitems_to_send - long(ninput_=
items) =3D=3D 0)<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _metadata.end_of_bur=
st =3D true;<br>
&nbsp; &nbsp; &nbsp; &nbsp; } else {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // There is a tag gap since no len=
gth_tag was found immediately following<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // the last sample of the previous=
 burst. Drop samples until the next<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // length_tag is found. Notify the=
 user of the tag gap.<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; std::cerr &lt;&lt; "tG" &lt;&lt; s=
td::flush;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // increment the timespec by the n=
umber of samples dropped<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _metadata.time_spec +=3D ::uhd::ti=
me_spec_t(0, ninput_items, _sample_rate);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return ninput_items;<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
&nbsp; &nbsp; }<br>
<br>
&nbsp; &nbsp; boost::this_thread::disable_interruption disable_interrupt;<br=
>
#ifdef GR_UHD_USE_STREAM_API<br>
&nbsp; &nbsp; // send all ninput_items with metadata<br>
&nbsp; &nbsp; const size_t num_sent =3D _tx_stream-&gt;send(input_items, nin=
put_items, _metadata, 1.0);<br>
#else<br>
&nbsp; &nbsp; const size_t num_sent =3D _dev-&gt;get_device()-&gt;send(input=
_items,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ninput_items,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;_metadata,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*_type,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;::uhd::device::SEND_MODE_FULL_BUFF,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.0);<br>
#endif<br>
&nbsp; &nbsp; boost::this_thread::restore_interruption restore_interrupt(dis=
able_interrupt);<br>
<br>
&nbsp; &nbsp; // if using length_tags, decrement items left to send by the n=
umber of samples sent<br>
&nbsp; &nbsp; if (not pmt::is_null(_length_tag_key) &amp;&amp; _nitems_to_se=
nd &gt; 0) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; _nitems_to_send -=3D long(num_sent);<br>
&nbsp; &nbsp; }<br>
<br>
&nbsp; &nbsp; // increment the timespec by the number of samples sent<br>
&nbsp; &nbsp; _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _samp=
le_rate);<br>
<br>
&nbsp; &nbsp; // Some post-processing tasks if we actually transmitted the e=
ntire burst<br>
&nbsp; &nbsp; if (not _pending_cmds.empty() &amp;&amp; num_sent =3D=3D size_=
t(ninput_items)) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; GR_LOG_DEBUG(d_debug_logger,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
boost::format("Executing %d pending commands.") %<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;_pending_cmds.size());<br>
&nbsp; &nbsp; &nbsp; &nbsp; BOOST_FOREACH (const pmt::pmt_t&amp; cmd_pmt, _p=
ending_cmds) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; msg_handler_command(cmd_pmt);<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
&nbsp; &nbsp; &nbsp; &nbsp; _pending_cmds.clear();<br>
&nbsp; &nbsp; }<br>
<br>
&nbsp; &nbsp; return num_sent;<br>
}<br>
<br>
=46rom this code, it can be seen that the data is transmitted including _met=
adata:<br>
<br>
const size_t num_sent =3D _tx_stream-&gt;send(input_items, ninput_items, _me=
tadata, 1.0);<br>
<br>
The "time_spec" is updated for each block that is sent out:<br>
<br>
_metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_rate);<br>
<br>
Now you mentioned "has_time_spec" below. I extended to code in the following=
 way:<br>
<br>
&nbsp; &nbsp; // increment the timespec by the number of samples sent<br>
&nbsp; &nbsp; _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _samp=
le_rate);<br>
&nbsp; &nbsp; GR_LOG_DEBUG(d_debug_logger, boost::format("Setting metadata t=
ime_spec: %d:%f") % _metadata.time_spec.get_full_secs() % _metadata.time_spe=
c.get_frac_secs());<br>
&nbsp; &nbsp; _metadata.has_time_spec =3D true;<br>
<br>
<br>
To my understanding, gr-uhd now passes the correct timestamps on to UHD.<br>=

However, the timed command is still ignored.<br>
<br>
<br>
Thanks,<br>
Lukas<br>
<br>
<br>
PS: I will attempt to use the tagged stream ... but then I will have the iss=
ue that I need to tune TX *plus* RX at the same time! Furthermore, the strea=
ming tags API is super rudimentary. Also, skimming the source code for the t=
ag processing, I am not sure if this would change anything.<br>
<br>
<br>
<br>
<br>
&nbsp;<br>
&nbsp;<br>
&nbsp;<br>
<br>
Gesendet:&nbsp;Dienstag, 03. M=C3=A4rz 2020 um 13:25 Uhr<br>
Von:&nbsp;"Sam Reiter" &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D=
"_blank">sam.reiter@ettus.com</a>[mailto:<a href=3D"mailto:sam.reiter@ettus.=
com" target=3D"_blank">sam.reiter@ettus.com</a>]&gt;<br>
An:&nbsp;"Rob Kossler" &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bla=
nk">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>]&gt;<br>
Cc:&nbsp;"Lukas Haase" &lt;<a href=3D"mailto:lukashaase@gmx.at" target=3D"_b=
lank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukashaase@gmx.at" targ=
et=3D"_blank">lukashaase@gmx.at</a>]&gt;, "<a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[mailto:<a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.et=
tus.com</a>]" &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>]&gt;<br>
Betreff:&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usi=
ng a timed command<br>
<br>
Everything Rob is saying is dead on - the "sense of time" for the radio is a=
 64-bit counter within the radio core that other blocks (like the DDC and DU=
C) don't have access to. Those blocks need to derive a sense of time from th=
e timestamps of CHDR packets passing through them. I just wrapped up a new a=
pp note that covers this (among other synchronization-related topics):<br>
&nbsp;<br>
<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD#Clocking_and_Timekeeping_in_the_USRP[https://kb.ettus.com/Synchron=
izing_USRP_Events_Using_Timed_Commands_in_UHD%23Clocking_and_Timekeeping_in_=
the_USRP]" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Synchro=
nizing_USRP_Events_Using_Timed_Commands_in_UHD#Clocking_and_Timekeeping_in_t=
he_USRP[https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_=
in_UHD#Clocking_and_Timekeeping_in_the_USRP]</a><br>
&nbsp;<br>
Lukas, I would doubt that this is an undiscovered bug as much as it is an is=
sue with implementation. If this were in C++, you'd want to set the 'has_tim=
e_spec' and 'time_spec' fields of your TX metadata for at least 1 packet to i=
mpart a sense of time on the DUC:<br>
&nbsp;<br>
<a href=3D"https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%=
5Bhttps://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D%5Bhttp=
s://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhttps://files=
.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D%5D" rel=3D"noreferrer=
" target=3D"_blank">https://files.ettus.com/manual/structuhd_1_1tx__metadata=
__t.html[https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html][h=
ttps://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhttps://fi=
les.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D]</a><br>
&nbsp;<br>
I just spoke with someone on my end who said you need to use stream tags to d=
o this, but again, I don't currently have much direction for how that would b=
e implemented in your code.<br>
&nbsp;<br>
<br>
Sam Reiter&nbsp;&nbsp;<br>
<br>
On Tue, Mar 3, 2020 at 11:48 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossl=
er@nd.edu" target=3D"_blank">rkossler@nd.edu</a>][mailto:<a href=3D"mailto:r=
kossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>]]&gt; wrote:<br>
Also, note that there is no corresponding issue on receive because the Rx ra=
dio always inserts the time stamp&nbsp;in the sample stream. So, I guess you=
 would not see this with the DDC.<br>
Rob&nbsp;<br>
<br>
On Tue, Mar 3, 2020 at 12:43 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossl=
er@nd.edu" target=3D"_blank">rkossler@nd.edu</a>][mailto:<a href=3D"mailto:r=
kossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>]]&gt; wrote:<br>
<br>
Hi Lukas,<br>
The FPGA image on the USRP is divided into blocks such as the DUC block and t=
he Radio block.&nbsp; The latter controls the RF daughterboard and has acces=
s to the device clock.&nbsp; So, when you provide a timed command to the Rad=
io block (such as for tuning the RF) it can implement the command at the spe=
cified time by comparing to the device clock.&nbsp; The DUC block does not h=
ave access to the MB clock and so when you give it a timed command, it monit=
ors the incoming sample stream to extract the time. If the sample stream doe=
s not include a time stamp, the command never executes.&nbsp; Don't think of=
 this as a bug, but rather as a design limitation.<br>
&nbsp;<br>
When I work directly with UHD from C++, I use the function rx_streamer::issu=
e_stream_command() which has options to stream data with no time stamp or wi=
th a time stamp.&nbsp; When using timed commands with DUC or DDC, I must inc=
lude the time stamp or else the command will never be executed.&nbsp; But, w=
ith GR, I don't know how to specify the corresponding options.<br>
Rob&nbsp;<br>
<br>
On Tue, Mar 3, 2020 at 12:29 PM Lukas Haase &lt;<a href=3D"mailto:lukashaase=
@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lu=
kashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>][mailto:<a href=3D"=
mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a h=
ref=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]]&g=
t; wrote:Hi Sam, Hi Rob,<br>
<br>
Thanks for following up on this!<br>
I am very happy you were able to reproduce this ... which means that at leas=
t an issue exists :)<br>
<br>
What Sam suggests makes sense even though hard to believe for me:<br>
<br>
1. How could something like that go unnoticed for so long? (I am sure I am n=
ot the first performing digital tuning)<br>
2. In the past I got successful phase coherence using automatic tuning (pass=
ing center frequency + offset to tune_request_t and using integer-N tuning) u=
sing timed commands. This did not work reliably and only for certain frequen=
cies but in my opinion this should have INCLUDED the DUC tuning. If the DUC r=
etune wouldn't have been executed as part of this automatic tuning, I could n=
ot have gotten phase coherence (and actually, not even the desired frequency=
).<br>
<br>
The reason why I am only doing DUC tuning now is to avoid all the hassle wit=
h integer-N tuning, PLL retuning and settling time.<br>
<br>
Sam, what is the "radio block" you were talking about?<br>
<br>
Anyway, would it be worthwile to attempt debugging this is absence of gr?<br=
>
The only reason this prevented me from doing is that I would need to manuall=
y create the baseband samples and continuously stream them out while in para=
llel do the retuning.<br>
I am not too familiar with UHD on its own but I assume this would be very co=
mplicated, require multithreading etc.<br>
Do you have any demo code that could be easily modified for this scenario?<b=
r>
<br>
Best,<br>
Lukas<br>
<br>
<br>
Gesendet:&nbsp;Dienstag, 03. M=C3=A4rz 2020 um 12:08 Uhr<br>
Von:&nbsp;"Sam Reiter" &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D=
"_blank">sam.reiter@ettus.com</a>[mailto:<a href=3D"mailto:sam.reiter@ettus.=
com" target=3D"_blank">sam.reiter@ettus.com</a>][mailto:<a href=3D"mailto:sa=
m.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>[mailto:<a hre=
f=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>=
]]&gt;<br>
An:&nbsp;"Rob Kossler" &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bla=
nk">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>][mailto:<a href=3D"mailto:rkossler@nd.edu" targe=
t=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossler@nd.edu" t=
arget=3D"_blank">rkossler@nd.edu</a>]]&gt;<br>
Cc:&nbsp;"Lukas Haase" &lt;<a href=3D"mailto:lukashaase@gmx.at" target=3D"_b=
lank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukashaase@gmx.at" targ=
et=3D"_blank">lukashaase@gmx.at</a>][mailto:<a href=3D"mailto:lukashaase@gmx=
.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukash=
aase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]]&gt;, "<a href=3D"mail=
to:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com<=
/a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:USRP-users@lists.ett=
us.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a>]]" &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>][mailto:<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>]]&gt;<br>
Betreff:&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usi=
ng a timed command<br>
<br>
For what it's worth, I was able to reproduce the behavior described here, bu=
t didn't get to dig into it much. My leading suspicion would be what Rob men=
tioned about timestamping. Lukas' code sets a command time, but I'm not clea=
r on how timestamp metadata for packets being sent to the radio are handled.=
 Might be a good question to loop the discuss-gnuradio mailing list in on?<b=
r>
<br>
&nbsp;<br>
<br>
Sam Reiter&nbsp;&nbsp;<br>
<br>
On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>]][mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>][mailto:<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>]]]&gt; wrote:<br>
I wonder if the issue is related to a missing time stamp on the baseband sam=
ples going from GR to UHD.&nbsp; If the stream does not have a time stamp, t=
he DUC is unable to apply the timed command because the DUC does not really k=
now the time - it must pull the time from the streaming samples. This is in c=
ontrast to the radio block which does have access to time and can apply time=
d commands by referring to the motherboard clock.<br>
&nbsp;<br>
I am not too familiar with GR so I'm not sure how to know if GR is putting a=
 time stamp on the streaming samples.<br>
Rob&nbsp;<br>
<br>
On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>]][mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>][mailto:<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>]]]&gt; wrote:Hi Marcus,<br>
<br>
Thank you that would be amazing!<br>
<br>
I followed the tutorial and built everything from source:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:&nbsp; &nbsp; Ubuntu 18.04.4 LTS<br>
Release:&nbsp; &nbsp; &nbsp; &nbsp; 18.04<br>
Codename:&nbsp; &nbsp; &nbsp; &nbsp;bionic<br>
$ uname -a<br>
Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC 202=
0 x86_64 x86_64 x86_64 GNU/Linux<br>
$ cd uhd<br>
$ git status<br>
HEAD detached at v3.15.0.0<br>
$ cd ../gnuradio<br>
$ git status<br>
HEAD detached at v3.7.14.0<br>
<br>
<br>
Thank you!<br>
<br>
Lukas<br>
<br>
<br>
<br>
PS: For some reason I sometimes do not get responses from this list. I just s=
aw it looking at the mailman archives. Hence I cannot respond (to keep heade=
rs intact) but need to create a new message and manually "quote". I hope tha=
t still preserves the context somehow.<br>
<br>
<br>
<br>
Marcus Leech wrote:<br>
&gt; On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:<br>
&gt;&gt; Hi again,<br>
&gt;&gt;<br>
&gt;&gt; I created a minimum example (gnuradio) that shows the issue describ=
ed below.<br>
&gt;&gt; To summarize: Retuning to a different dsp frequency on an USRP X310=
 (+UBX160) does not work (command ignored) ONLY if a timed command (in futur=
e is used).<br>
&gt;&gt; The code shows it in a simple manner. Commenting out the single lin=
e with set_command_time makes the example work.<br>
&gt;&gt;<br>
&gt;&gt; I am absolutely out of ideas and would appreciate any input!<br>
&gt;&gt;<br>
&gt;&gt; Best,<br>
&gt;&gt; Lukas<br>
&gt; Lukas.<br>
&gt;<br>
&gt; Thanks for sticking with this.&nbsp; I'll have a discussion with Ettus R=
&amp;D to<br>
&gt; see if this is a known issue and/or if there's a workaround.<br>
&gt;<br>
&gt; Remind me which version of UHD you're using?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" targ=
et=3D"_blank">USRP-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:USRP-=
users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[mail=
to:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-user=
s@lists.ettus.com</a>]][mailto:<a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:U=
SRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>]=
[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP=
-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank">USRP-users@lists.ettus.com</a>]]]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m_______________________________________________USRP-users%5Bhttp://lists.et=
tus.com/mailman/listinfo/usrp-users_lists.ettus.com_________________________=
______________________USRP-users%5D%5Bhttp://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com_______________________________________________U=
SRP-users%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om_______________________________________________USRP-users%5D%5D" rel=3D"no=
referrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com_______________________________________________<br>
USRP-users[http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m_______________________________________________USRP-users][http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com__________________________=
_____________________USRP-users%5Bhttp://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com_______________________________________________USRP-=
users%5D]</a> mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" targ=
et=3D"_blank">USRP-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:USRP-=
users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[mail=
to:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-user=
s@lists.ettus.com</a>]][mailto:<a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:U=
SRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>]=
[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP=
-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank">USRP-users@lists.ettus.com</a>]]]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D%5B=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5Bhttp://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D%5D" rel=3D"no=
referrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com[http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com][http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D]</=
a><br>
</blockquote></div></div>
</blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-DD263CFE-C36F-4CF3-BE9F-4536E9FBF1F6--


--===============4404985370443460757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4404985370443460757==--


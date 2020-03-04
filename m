Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5C8179AA6
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 22:07:25 +0100 (CET)
Received: from [::1] (port=46960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9bEe-0006Qd-4A; Wed, 04 Mar 2020 16:07:20 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:37211)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9bEZ-0006Lq-RH
 for usrp-users@lists.ettus.com; Wed, 04 Mar 2020 16:07:15 -0500
Received: by mail-oi1-f173.google.com with SMTP id q65so3616043oif.4
 for <usrp-users@lists.ettus.com>; Wed, 04 Mar 2020 13:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OBo4J2o8Hwj76JooxAr7+2fFv0ggrvM8c0ojv0QZIl4=;
 b=gj00MuCvFjxFYi37x7/WKa6y1RpfumJT/aqkqGaEqOAaT/b1nb/JztDHXdoEySvP8s
 CUTkUgjVMFZRMotW3bPihVT0hBKS4ORkbWxLqMR5gZbAMFlUm4xUa0GT9Nv/WpnUH5Fm
 pUZmmqnXGsIQ/mekLZvFfmROzn2XFkx09+HHVZmYIZ2t6wLak/bXByRYDHH1RP3Wiu1a
 8W3Odp3xKCovAk9mIlpJw4H5lzKd4lh0I2C7DPi5urbjDlyvugd5hQ9jOOTzRQI36m20
 f1b0FLVsvwKmJ76WdBi2kZ/kz46y3BTSWoTNIsV2TpVaCZjEmgjrv2cIYkojh6FvZf4V
 Vf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OBo4J2o8Hwj76JooxAr7+2fFv0ggrvM8c0ojv0QZIl4=;
 b=du/5pCVbigoi1or4ib77tzXtclqwX+v+G7Yvr41PxaG7MVKelFUzqp5T+yjQZE2oCe
 5e7N+ZGsjNyTui9FiRWpthKoZTP/3jmKMRkhKW8kBUTzvrlYfM+JsmRiR6EgwAx2pdRl
 soFtQcgD1bsiqWpAo5/R5eSkjWGErWn4H2nXwzLtL3d6bVhiHoStrLcjJzjayaEQPS6x
 eAi60dQc+RIhYcStKLy9S7x5ANJmIIWxQ7uGxFj+rw+5hTikingH3st7T7csfMAy6DjG
 +lMb/uXzmHtOvctMcV1sT7Pb44SW5LLVluVNgu7A/w0ON9uHbkQb3fx5zZ+5JB2uZiEQ
 lf0g==
X-Gm-Message-State: ANhLgQ2rxHrPUEM8BjG1HD7pgQPugzyz0mJiVl60ScoXQ7WYfCXGheKF
 itfynHLSc7SzHCW0V07Wc0+yjNDZu7dX4h2os1D/pg==
X-Google-Smtp-Source: ADFU+vukUj/JDSQiGXWVJeWbYb+vtThkAOuRkLzJfd9xHcgbGopNuSexoC9Eg4hk2haXCZwEp7aWvDP7SWKf/kEpHAE=
X-Received: by 2002:a05:6808:aaf:: with SMTP id
 r15mr3044218oij.124.1583355994830; 
 Wed, 04 Mar 2020 13:06:34 -0800 (PST)
MIME-Version: 1.0
References: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
 <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
 <CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com>
 <trinity-1e499bef-ac0a-4580-ad27-647e1755c34a-1583256550568@3c-app-gmx-bap50>
 <CAB__hTSY-dv9UTwZTRaOF5bLN3Sk0JF5onD3XBYP8tZB-9BvrA@mail.gmail.com>
 <CAB__hTQQJHsraknp0OTQTUukBPq3MCggN_ASZvhD=O28-r71TQ@mail.gmail.com>
 <CANf970YD3OT81FT9jB5uSyGpWo7pQibuw65YT2BXhDg=bUR_bg@mail.gmail.com>
 <trinity-fe7ab6e0-b371-42cb-88b1-463ee693e2f2-1583265613551@3c-app-gmx-bap50>
 <CAB__hTRSUQC8POObAroyx9j8s+GYZ0P-DF4O63i7Yrre6OyYkQ@mail.gmail.com>
 <trinity-7389928b-dd10-4c8f-8360-db579e25a6ed-1583341559746@3c-app-gmx-bs76>
 <CAB__hTSG1d_XEYv2WowP4zRoL7cqb94wirb5LRG1oGL7zMAh6g@mail.gmail.com>
 <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
In-Reply-To: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
Date: Wed, 4 Mar 2020 16:06:23 -0500
Message-ID: <CAB__hTSvoEOC83jQdKWu-FS+cMzCcGMdLMjWWCjeWNuhhe_9Gg@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3708040007851016783=="
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

--===============3708040007851016783==
Content-Type: multipart/alternative; boundary="000000000000a0419905a00dcbee"

--000000000000a0419905a00dcbee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

And, one more idea.  If you can transmit 2 streams simultaneously (even if
you only need one), it appears to me from the "set_start_time"
documentation that gr-uhd may automatically add the time stamp (with a time
stamp in the "near future" which to me means "get_time_now+ small_delay")
because in the case of simultaneous transmission it is typical for the user
to want both streams to start at the exact same time.

Rob

On Wed, Mar 4, 2020 at 12:42 PM Rob Kossler <rkossler@nd.edu> wrote:

> Regarding #2)
> I don't think that what you want is a "command" tag, but rather a "time
> stamp tag" which I believe is "tx_time" based on the link you provided to
> the documentation.  The documentation says, "The timestamp tag value is a
> PMT tuple of the following: (uint64 seconds, double fractional seconds)".
> If I am correct, perhaps the code snipped you provided will not come into
> play.
>
> Just to be clear, I don't think you should need to do both #1 and #2.
> But, I "believe" that either method should be possible to accomplish the
> goal of attaching a time stamp to the streaming.
>
> Also, keep in mind that the time stamp that you provide to the DUC block
> for the freq change is related to the time stamp you attach to the
> streaming samples.  Let me explain with a few remarks:
>
>    - If you apply the time stamp of 0.5 to the streaming samples, then
>    the first sample will have time 0.5 and then UHD will keep track of al=
l
>    subsequent samples to know the absolute time of any given sample.  I a=
m
>    assuming that once you start transmitting you will keep transmitting
>    continuously until the flow graph ends.
>    - If you then start hopping your DUC with time stamps such as 0.6,
>    0.7, 0.8, etc, then UHD should apply the hop at the correct part of th=
e
>    stream since it knows the time of each sample.
>    - But, be sure that you know for certain that the UHD time is truly
>    set to zero at the start of the run.  Otherwise, if it is at some arbi=
trary
>    value at startup such as 9876.1 seconds, and you are using time stamps=
 to
>    set your DUC tuning such as "get_time_now()+0.5", then it will want to
>    apply the tuning at 9876.6 seconds. Thus, if you time stamped your tx
>    stream at 0.5 seconds, you will have a long time to wait before the tu=
ning
>    occurs.
>
> Rob
>
> On Wed, Mar 4, 2020 at 12:13 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Lukas,
>> Let me respond to #1 right away.  The "set_start_time" function sets the
>> time of the tx stream.  It does not set the "clock time" on the usrp.  I=
f
>> you are indeed correct that the "clock time" on the usrp is initialized =
to
>> 0.0 at the start of the GR run, then you are lucky and all you should ne=
ed
>> to do is use the "set_start_time" function with a time spec of something
>> like 0.2 or 0.5 (any time after 0.0 with perhaps a little delay built in=
).
>> To see if it is working, you could set the time spec to something very
>> large like 5.0 or 10.0 and then you should see the GR run start up but n=
o
>> Tx for the next 5 or 10 seconds.  Then the Tx should start.  Does that m=
ake
>> sense?
>> Rob
>>
>>
>> On Wed, Mar 4, 2020 at 12:06 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>
>>> Hi Rob,
>>>
>>> 1.) I do not really understand how "set_start_time" is related to my
>>> problem and why this is what I need. Based on my experiments, the time =
is
>>> automatically set to 0 when the flow diagram starts.
>>>
>>> I am also sure others must have used timed TX+RX but it does not seem
>>> so. No kidding, I am working on this since Dec and I still do not have =
it
>>> working. I left my traces various times on this and the gnuradio mailin=
g
>>> list but I did not get help.
>>>
>>> 2.) I have played around using stream tags and was very happy that it
>>> worked but I found now that this is because gr-uhd does NOT attach a
>>> command time although the documentation says so.
>>>
>>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html:
>>> tx_command tag. The command is attached to a sample, and will executed
>>> before the sample is transmitted, and after the previous sample.
>>>
>>> However, in the code (usrp_sink_impl.cc:433, usrp_sink_impl::tag_work):
>>>
>>>         else if (pmt::equal(key, COMMAND_KEY)) {
>>>             if (my_tag_count !=3D samp0_count) {
>>>                 max_count =3D my_tag_count;
>>>                 break;
>>>             }
>>>             // TODO set the command time from the sample time
>>>             msg_handler_command(value);
>>>         }
>>>
>>> 3.) So I am really back to the start. What is generally a bit annoying
>>> is that I have two objects for the same device (*one* USRP and "USRP
>>> Source"+"USRP Sink", both with their independent uhd::usrp::multi_usrp
>>> objects. My question is, is it possible to just use "USRP Source" (this=
 is
>>> where timed commands work) to execute the retuning for *both* RX+TX?
>>>
>>> 3.a.) Given: X310 with 2xUBX-160. What is the subdev spec if I wanted t=
o
>>> receive on all FOUR inputs??
>>> The problem is that both RX and TX frontends have the same name "0"
>>> (according to uhd_usrp_probe).
>>>
>>> Two receivers, receiving both from "TX/RX" input of each UBX-160 would
>>> be trivial: "A:0 B:0". However, how do I address "RX2"? Intuitively "A:=
0
>>> A:1 B:0 B:1" but as said, both "TX/RX" and "RX2" are named "0".
>>> What would I do if I wanted to transmit from "TX/RX" of the second UBX
>>> and receive on all other boards?
>>>
>>> On the USRP Sink: "B:0"
>>> On the USP Source intuitively: "A:0 A:1 B:1" but that's wrong.
>>>
>>> 3.b.) In gr, there will be two multi_usrp objects: One for the receiver
>>> (member variable of USRP Source) and one for the transmitter (member
>>> variable of USRP Sink).
>>> Can I set up a USRP Source that has two channels where the second one i=
s
>>> actually a TX channel? (only used for retuning via timed commands)?
>>>
>>>
>>> Thanks,
>>> Lukas
>>>
>>>
>>>
>>>
>>>
>>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 15:22 Uhr
>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>> Cc: "Sam Reiter" <sam.reiter@ettus.com>, "USRP-users@lists.ettus.com" <
>>> usrp-users@lists.ettus.com>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>> using a timed command
>>>
>>> I did a quick google search using "gnuradio uhd timed tx streaming". I
>>> found that the GR usrp_sink[
>>> https://www.gnuradio.org/doc/sphinx-3.7.7/uhd.html] has the function
>>> "set_start_time" which seems to be what you need.  The question is: wha=
t
>>> time do you set?  Probably just something like "get_time_now() + 0.1". =
It
>>> may be a bit tricky since this value is to be set before starting the f=
low
>>> graph.  Maybe you could set it to some fixed constant like 0.5 and then
>>> when the flow graph starts you could execute a command to set_time_now(=
) to
>>> 0.0.  Anyway, if this advice doesn't pan out, perhaps just search aroun=
d a
>>> bit in GR archives.  I'm sure others have successfully streamed with ti=
med
>>> Tx commands.
>>> Rob
>>>
>>> On Tue, Mar 3, 2020 at 3:00 PM Lukas Haase <lukashaase@gmx.at[mailto:
>>> lukashaase@gmx.at]> wrote:
>>>
>>> Hi Sam, Hi Rob,
>>>
>>> This makes so much sense!
>>> I think you are right.
>>> And indeed, the issue I found only with TX, not RX.
>>>
>>>
>>> Could you think of a possible hack sending a "dummy command" to the RF
>>> board along with the timed tuning request?
>>>
>>>
>>> Regarding the sending of time stamps in the TX in gr-uhd, I am confused
>>> though. I do think this IS happening. I reproduce the work function of
>>> "USRP Sink" here:
>>>
>>> int usrp_sink_impl::work(int noutput_items,
>>>                          gr_vector_const_void_star& input_items,
>>>                          gr_vector_void_star& output_items)
>>> {
>>>     int ninput_items =3D noutput_items; // cuz it's a sync block
>>>
>>>     // default to send a mid-burst packet
>>>     _metadata.start_of_burst =3D false;
>>>     _metadata.end_of_burst =3D false;
>>>
>>>     // collect tags in this work()
>>>     const uint64_t samp0_count =3D nitems_read(0);
>>>     get_tags_in_range(_tags, 0, samp0_count, samp0_count + ninput_items=
);
>>>     if (not _tags.empty())
>>>         this->tag_work(ninput_items);
>>>
>>>     if (not pmt::is_null(_length_tag_key)) {
>>>         // check if there is data left to send from a burst tagged with
>>> length_tag
>>>         // If a burst is started during this call to work(), tag_work()
>>> should have
>>>         // been called and we should have _nitems_to_send > 0.
>>>         if (_nitems_to_send > 0) {
>>>             ninput_items =3D std::min<long>(_nitems_to_send, ninput_ite=
ms);
>>>             // if we run out of items to send, it's the end of the burs=
t
>>>             if (_nitems_to_send - long(ninput_items) =3D=3D 0)
>>>                 _metadata.end_of_burst =3D true;
>>>         } else {
>>>             // There is a tag gap since no length_tag was found
>>> immediately following
>>>             // the last sample of the previous burst. Drop samples unti=
l
>>> the next
>>>             // length_tag is found. Notify the user of the tag gap.
>>>             std::cerr << "tG" << std::flush;
>>>             // increment the timespec by the number of samples dropped
>>>             _metadata.time_spec +=3D ::uhd::time_spec_t(0, ninput_items=
,
>>> _sample_rate);
>>>             return ninput_items;
>>>         }
>>>     }
>>>
>>>     boost::this_thread::disable_interruption disable_interrupt;
>>> #ifdef GR_UHD_USE_STREAM_API
>>>     // send all ninput_items with metadata
>>>     const size_t num_sent =3D _tx_stream->send(input_items, ninput_item=
s,
>>> _metadata, 1.0);
>>> #else
>>>     const size_t num_sent =3D _dev->get_device()->send(input_items,
>>>                                                      ninput_items,
>>>                                                      _metadata,
>>>                                                      *_type,
>>>
>>>  ::uhd::device::SEND_MODE_FULL_BUFF,
>>>                                                      1.0);
>>> #endif
>>>     boost::this_thread::restore_interruption
>>> restore_interrupt(disable_interrupt);
>>>
>>>     // if using length_tags, decrement items left to send by the number
>>> of samples sent
>>>     if (not pmt::is_null(_length_tag_key) && _nitems_to_send > 0) {
>>>         _nitems_to_send -=3D long(num_sent);
>>>     }
>>>
>>>     // increment the timespec by the number of samples sent
>>>     _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_ra=
te);
>>>
>>>     // Some post-processing tasks if we actually transmitted the entire
>>> burst
>>>     if (not _pending_cmds.empty() && num_sent =3D=3D size_t(ninput_item=
s)) {
>>>         GR_LOG_DEBUG(d_debug_logger,
>>>                      boost::format("Executing %d pending commands.") %
>>>                          _pending_cmds.size());
>>>         BOOST_FOREACH (const pmt::pmt_t& cmd_pmt, _pending_cmds) {
>>>             msg_handler_command(cmd_pmt);
>>>         }
>>>         _pending_cmds.clear();
>>>     }
>>>
>>>     return num_sent;
>>> }
>>>
>>> From this code, it can be seen that the data is transmitted including
>>> _metadata:
>>>
>>> const size_t num_sent =3D _tx_stream->send(input_items, ninput_items,
>>> _metadata, 1.0);
>>>
>>> The "time_spec" is updated for each block that is sent out:
>>>
>>> _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_rate);
>>>
>>> Now you mentioned "has_time_spec" below. I extended to code in the
>>> following way:
>>>
>>>     // increment the timespec by the number of samples sent
>>>     _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_ra=
te);
>>>     GR_LOG_DEBUG(d_debug_logger, boost::format("Setting metadata
>>> time_spec: %d:%f") % _metadata.time_spec.get_full_secs() %
>>> _metadata.time_spec.get_frac_secs());
>>>     _metadata.has_time_spec =3D true;
>>>
>>>
>>> To my understanding, gr-uhd now passes the correct timestamps on to UHD=
.
>>> However, the timed command is still ignored.
>>>
>>>
>>> Thanks,
>>> Lukas
>>>
>>>
>>> PS: I will attempt to use the tagged stream ... but then I will have th=
e
>>> issue that I need to tune TX *plus* RX at the same time! Furthermore, t=
he
>>> streaming tags API is super rudimentary. Also, skimming the source code=
 for
>>> the tag processing, I am not sure if this would change anything.
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 13:25 Uhr
>>> Von: "Sam Reiter" <sam.reiter@ettus.com[mailto:sam.reiter@ettus.com]>
>>> An: "Rob Kossler" <rkossler@nd.edu[mailto:rkossler@nd.edu]>
>>> Cc: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at]>, "
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]" <
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>> using a timed command
>>>
>>> Everything Rob is saying is dead on - the "sense of time" for the radio
>>> is a 64-bit counter within the radio core that other blocks (like the D=
DC
>>> and DUC) don't have access to. Those blocks need to derive a sense of t=
ime
>>> from the timestamps of CHDR packets passing through them. I just wrappe=
d up
>>> a new app note that covers this (among other synchronization-related
>>> topics):
>>>
>>>
>>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD#Clocking_and_Timekeeping_in_the_USRP[https://kb.ettus.com/Synchronizing=
_USRP_Events_Using_Timed_Commands_in_UHD#Clocking_and_Timekeeping_in_the_US=
RP]
>>>
>>> Lukas, I would doubt that this is an undiscovered bug as much as it is
>>> an issue with implementation. If this were in C++, you'd want to set th=
e
>>> 'has_time_spec' and 'time_spec' fields of your TX metadata for at least=
 1
>>> packet to impart a sense of time on the DUC:
>>>
>>>
>>> https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html[https:=
//files.ettus.com/manual/structuhd_1_1tx__metadata__t.html][https://files.e=
ttus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhttps://files.ettus.com=
/manual/structuhd_1_1tx__metadata__t.html%5D]
>>> <https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhtt=
ps://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D%5Bhttps://=
files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhttps://files.et=
tus.com/manual/structuhd_1_1tx__metadata__t.html%5D%5D>
>>>
>>> I just spoke with someone on my end who said you need to use stream tag=
s
>>> to do this, but again, I don't currently have much direction for how th=
at
>>> would be implemented in your code.
>>>
>>>
>>> Sam Reiter
>>>
>>> On Tue, Mar 3, 2020 at 11:48 AM Rob Kossler <rkossler@nd.edu[mailto:
>>> rkossler@nd.edu][mailto:rkossler@nd.edu[mailto:rkossler@nd.edu]]> wrote=
:
>>> Also, note that there is no corresponding issue on receive because the
>>> Rx radio always inserts the time stamp in the sample stream. So, I gues=
s
>>> you would not see this with the DDC.
>>> Rob
>>>
>>> On Tue, Mar 3, 2020 at 12:43 PM Rob Kossler <rkossler@nd.edu[mailto:
>>> rkossler@nd.edu][mailto:rkossler@nd.edu[mailto:rkossler@nd.edu]]> wrote=
:
>>>
>>> Hi Lukas,
>>> The FPGA image on the USRP is divided into blocks such as the DUC block
>>> and the Radio block.  The latter controls the RF daughterboard and has
>>> access to the device clock.  So, when you provide a timed command to th=
e
>>> Radio block (such as for tuning the RF) it can implement the command at=
 the
>>> specified time by comparing to the device clock.  The DUC block does no=
t
>>> have access to the MB clock and so when you give it a timed command, it
>>> monitors the incoming sample stream to extract the time. If the sample
>>> stream does not include a time stamp, the command never executes.  Don'=
t
>>> think of this as a bug, but rather as a design limitation.
>>>
>>> When I work directly with UHD from C++, I use the function
>>> rx_streamer::issue_stream_command() which has options to stream data wi=
th
>>> no time stamp or with a time stamp.  When using timed commands with DUC=
 or
>>> DDC, I must include the time stamp or else the command will never be
>>> executed.  But, with GR, I don't know how to specify the corresponding
>>> options.
>>> Rob
>>>
>>> On Tue, Mar 3, 2020 at 12:29 PM Lukas Haase <lukashaase@gmx.at[mailto:
>>> lukashaase@gmx.at][mailto:lukashaase@gmx.at[mailto:lukashaase@gmx.at]]>
>>> wrote:Hi Sam, Hi Rob,
>>>
>>> Thanks for following up on this!
>>> I am very happy you were able to reproduce this ... which means that at
>>> least an issue exists :)
>>>
>>> What Sam suggests makes sense even though hard to believe for me:
>>>
>>> 1. How could something like that go unnoticed for so long? (I am sure I
>>> am not the first performing digital tuning)
>>> 2. In the past I got successful phase coherence using automatic tuning
>>> (passing center frequency + offset to tune_request_t and using integer-=
N
>>> tuning) using timed commands. This did not work reliably and only for
>>> certain frequencies but in my opinion this should have INCLUDED the DUC
>>> tuning. If the DUC retune wouldn't have been executed as part of this
>>> automatic tuning, I could not have gotten phase coherence (and actually=
,
>>> not even the desired frequency).
>>>
>>> The reason why I am only doing DUC tuning now is to avoid all the hassl=
e
>>> with integer-N tuning, PLL retuning and settling time.
>>>
>>> Sam, what is the "radio block" you were talking about?
>>>
>>> Anyway, would it be worthwile to attempt debugging this is absence of g=
r?
>>> The only reason this prevented me from doing is that I would need to
>>> manually create the baseband samples and continuously stream them out w=
hile
>>> in parallel do the retuning.
>>> I am not too familiar with UHD on its own but I assume this would be
>>> very complicated, require multithreading etc.
>>> Do you have any demo code that could be easily modified for this
>>> scenario?
>>>
>>> Best,
>>> Lukas
>>>
>>>
>>> Gesendet: Dienstag, 03. M=C3=A4rz 2020 um 12:08 Uhr
>>> Von: "Sam Reiter" <sam.reiter@ettus.com[mailto:sam.reiter@ettus.com
>>> ][mailto:sam.reiter@ettus.com[mailto:sam.reiter@ettus.com]]>
>>> An: "Rob Kossler" <rkossler@nd.edu[mailto:rkossler@nd.edu][mailto:
>>> rkossler@nd.edu[mailto:rkossler@nd.edu]]>
>>> Cc: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at][mailto:
>>> lukashaase@gmx.at[mailto:lukashaase@gmx.at]]>, "
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]]" <
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]]>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>> using a timed command
>>>
>>> For what it's worth, I was able to reproduce the behavior described
>>> here, but didn't get to dig into it much. My leading suspicion would be
>>> what Rob mentioned about timestamping. Lukas' code sets a command time,=
 but
>>> I'm not clear on how timestamp metadata for packets being sent to the r=
adio
>>> are handled. Might be a good question to loop the discuss-gnuradio mail=
ing
>>> list in on?
>>>
>>>
>>>
>>> Sam Reiter
>>>
>>> On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]]]> wrote:
>>> I wonder if the issue is related to a missing time stamp on the baseban=
d
>>> samples going from GR to UHD.  If the stream does not have a time stamp=
,
>>> the DUC is unable to apply the timed command because the DUC does not
>>> really know the time - it must pull the time from the streaming samples=
.
>>> This is in contrast to the radio block which does have access to time a=
nd
>>> can apply timed commands by referring to the motherboard clock.
>>>
>>> I am not too familiar with GR so I'm not sure how to know if GR is
>>> putting a time stamp on the streaming samples.
>>> Rob
>>>
>>> On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users <
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com][mailto:
>>> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]]]>
>>> wrote:Hi Marcus,
>>>
>>> Thank you that would be amazing!
>>>
>>> I followed the tutorial and built everything from source:
>>>
>>> $ lsb_release -a
>>> No LSB modules are available.
>>> Distributor ID: Ubuntu
>>> Description:    Ubuntu 18.04.4 LTS
>>> Release:        18.04
>>> Codename:       bionic
>>> $ uname -a
>>> Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UT=
C
>>> 2020 x86_64 x86_64 x86_64 GNU/Linux
>>> $ cd uhd
>>> $ git status
>>> HEAD detached at v3.15.0.0
>>> $ cd ../gnuradio
>>> $ git status
>>> HEAD detached at v3.7.14.0
>>>
>>>
>>> Thank you!
>>>
>>> Lukas
>>>
>>>
>>>
>>> PS: For some reason I sometimes do not get responses from this list. I
>>> just saw it looking at the mailman archives. Hence I cannot respond (to
>>> keep headers intact) but need to create a new message and manually "quo=
te".
>>> I hope that still preserves the context somehow.
>>>
>>>
>>>
>>> Marcus Leech wrote:
>>> > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>>> >> Hi again,
>>> >>
>>> >> I created a minimum example (gnuradio) that shows the issue describe=
d
>>> below.
>>> >> To summarize: Retuning to a different dsp frequency on an USRP X310
>>> (+UBX160) does not work (command ignored) ONLY if a timed command (in
>>> future is used).
>>> >> The code shows it in a simple manner. Commenting out the single line
>>> with set_command_time makes the example work.
>>> >>
>>> >> I am absolutely out of ideas and would appreciate any input!
>>> >>
>>> >> Best,
>>> >> Lukas
>>> > Lukas.
>>> >
>>> > Thanks for sticking with this.  I'll have a discussion with Ettus R&D
>>> to
>>> > see if this is a known issue and/or if there's a workaround.
>>> >
>>> > Remind me which version of UHD you're using?
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]]]
>>>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com_____=
__________________________________________
>>>
>>> USRP-users[http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com_______________________________________________USRP-users][http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com___________________=
____________________________USRP-users%5Bhttp://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com___________________________________________=
____USRP-users%5D]
>>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com____=
___________________________________________USRP-users%5Bhttp://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com____________________________=
___________________USRP-users%5D%5Bhttp://lists.ettus.com/mailman/listinfo/=
usrp-users_lists.ettus.com_______________________________________________US=
RP-users%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om_______________________________________________USRP-users%5D%5D>
>>> mailing list
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com][mailto:
>>> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]]]
>>>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com[http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com][http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5Bhttp://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com%5D]
>>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5Bh=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D%5Bhttp=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5Bhttp://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D%5D>
>>>
>>

--000000000000a0419905a00dcbee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">And, one more idea.=C2=A0 If you can transmit 2 streams si=
multaneously (even if you only need one), it appears to me from the &quot;s=
et_start_time&quot; documentation that gr-uhd may automatically add the tim=
e stamp (with a time stamp in the &quot;near future&quot; which to me means=
 &quot;get_time_now+ small_delay&quot;) because in the case of simultaneous=
 transmission it is typical for the user to want both streams to start at t=
he exact same time.<div><div><br></div><div>Rob<br></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar =
4, 2020 at 12:42 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkos=
sler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Regarding #2)<div>I don&#39;t =
think that what you want is a &quot;command&quot; tag, but rather a &quot;t=
ime stamp tag&quot; which I believe is &quot;tx_time&quot; based on the lin=
k you provided to the documentation.=C2=A0 The documentation says, &quot;Th=
e timestamp tag value is a PMT tuple of the following: (uint64 seconds, dou=
ble fractional seconds)&quot;.=C2=A0 If I am correct, perhaps the code snip=
ped you provided will not come into play.</div><div><br></div><div>Just to =
be clear, I don&#39;t think you should need to do both #1 and #2.=C2=A0 But=
, I &quot;believe&quot; that either method should be possible to accomplish=
 the goal of attaching a time stamp to the streaming.=C2=A0=C2=A0</div><div=
><br></div><div>Also, keep in mind that the time stamp that you provide to =
the DUC block for the freq change is related to the time stamp you attach t=
o the streaming samples.=C2=A0 Let me explain with a few remarks:</div><div=
><ul><li>If you apply the time stamp of 0.5 to the streaming samples, then =
the first sample will have time 0.5 and then UHD will keep track of all sub=
sequent samples to know the absolute time of any given sample.=C2=A0 I am a=
ssuming that once you start transmitting you will keep transmitting continu=
ously until the flow graph ends.</li><li>If you then start hopping your DUC=
 with time stamps such as 0.6, 0.7, 0.8, etc, then UHD should apply the hop=
 at the correct part of the stream since it knows the time of each sample.<=
/li><li>But, be sure that you know for certain that the UHD time is truly s=
et to zero at the start of the run.=C2=A0 Otherwise, if it is at some arbit=
rary value at startup such as 9876.1 seconds, and you are using time stamps=
 to set your DUC tuning such as &quot;get_time_now()+0.5&quot;, then it wil=
l want to apply the tuning at 9876.6 seconds. Thus, if you time stamped you=
r tx stream at 0.5 seconds, you will have a long time to wait before the tu=
ning occurs.=C2=A0=C2=A0</li></ul></div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 4, 2020 =
at 12:13 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hi Lukas,</div><div>Let me respo=
nd to #1 right away.=C2=A0 The &quot;set_start_time&quot; function sets the=
 time of the tx stream.=C2=A0 It does not set the &quot;clock time&quot; on=
 the usrp.=C2=A0 If you are indeed correct that the &quot;clock time&quot; =
on the usrp is initialized to 0.0 at the start of the GR run, then you are =
lucky and all you should need to do is use the &quot;set_start_time&quot; f=
unction with a time spec of something like 0.2 or 0.5 (any time after 0.0 w=
ith perhaps a little delay built in).=C2=A0 To see if it is working, you co=
uld set the time spec to something very large like 5.0 or 10.0 and then you=
 should see the GR run start up but no Tx for the next 5 or 10 seconds.=C2=
=A0 Then the Tx should start.=C2=A0 Does that make sense?</div><div>Rob</di=
v><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Mar 4, 2020 at 12:06 PM Lukas Haase &lt;<a href=3D"mailt=
o:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Rob,<br>
<br>
1.) I do not really understand how &quot;set_start_time&quot; is related to=
 my problem and why this is what I need. Based on my experiments, the time =
is automatically set to 0 when the flow diagram starts.<br>
<br>
I am also sure others must have used timed TX+RX but it does not seem so. N=
o kidding, I am working on this since Dec and I still do not have it workin=
g. I left my traces various times on this and the gnuradio mailing list but=
 I did not get help.<br>
<br>
2.) I have played around using stream tags and was very happy that it worke=
d but I found now that this is because gr-uhd does NOT attach a command tim=
e although the documentation says so.<br>
<br>
<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sin=
k.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnuradio.org/doc/d=
oxygen/classgr_1_1uhd_1_1usrp__sink.html</a>:<br>
tx_command tag. The command is attached to a sample, and will executed befo=
re the sample is transmitted, and after the previous sample.<br>
<br>
However, in the code (usrp_sink_impl.cc:433, usrp_sink_impl::tag_work):<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (pmt::equal(key, COMMAND_KEY)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (my_tag_count !=3D samp0_count=
) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 max_count =3D my_ta=
g_count;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // TODO set the command time from=
 the sample time<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msg_handler_command(value);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
3.) So I am really back to the start. What is generally a bit annoying is t=
hat I have two objects for the same device (*one* USRP and &quot;USRP Sourc=
e&quot;+&quot;USRP Sink&quot;, both with their independent uhd::usrp::multi=
_usrp objects. My question is, is it possible to just use &quot;USRP Source=
&quot; (this is where timed commands work) to execute the retuning for *bot=
h* RX+TX?<br>
<br>
3.a.) Given: X310 with 2xUBX-160. What is the subdev spec if I wanted to re=
ceive on all FOUR inputs??<br>
The problem is that both RX and TX frontends have the same name &quot;0&quo=
t; (according to uhd_usrp_probe).<br>
<br>
Two receivers, receiving both from &quot;TX/RX&quot; input of each UBX-160 =
would be trivial: &quot;A:0 B:0&quot;. However, how do I address &quot;RX2&=
quot;? Intuitively &quot;A:0 A:1 B:0 B:1&quot; but as said, both &quot;TX/R=
X&quot; and &quot;RX2&quot; are named &quot;0&quot;.<br>
What would I do if I wanted to transmit from &quot;TX/RX&quot; of the secon=
d UBX and receive on all other boards?<br>
<br>
On the USRP Sink: &quot;B:0&quot;<br>
On the USP Source intuitively: &quot;A:0 A:1 B:1&quot; but that&#39;s wrong=
.<br>
<br>
3.b.) In gr, there will be two multi_usrp objects: One for the receiver (me=
mber variable of USRP Source) and one for the transmitter (member variable =
of USRP Sink).<br>
Can I set up a USRP Source that has two channels where the second one is ac=
tually a TX channel? (only used for retuning via timed commands)?<br>
<br>
<br>
Thanks,<br>
Lukas<br>
<br>
<br>
=C2=A0<br>
=C2=A0<br>
<br>
Gesendet:=C2=A0Dienstag, 03. M=C3=A4rz 2020 um 15:22 Uhr<br>
Von:=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.edu" ta=
rget=3D"_blank">rkossler@nd.edu</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Cc:=C2=A0&quot;Sam Reiter&quot; &lt;<a href=3D"mailto:sam.reiter@ettus.com"=
 target=3D"_blank">sam.reiter@ettus.com</a>&gt;, &quot;<a href=3D"mailto:US=
RP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&=
quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX when us=
ing a timed command<br>
<br>
I did a quick google search using &quot;gnuradio uhd timed tx streaming&quo=
t;. I found that the GR usrp_sink[<a href=3D"https://www.gnuradio.org/doc/s=
phinx-3.7.7/uhd.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnur=
adio.org/doc/sphinx-3.7.7/uhd.html</a>] has the function &quot;set_start_ti=
me&quot; which seems to be what you need.=C2=A0 The question is: what time =
do you set?=C2=A0 Probably just something like &quot;get_time_now()=C2=A0+ =
0.1&quot;. It may be a bit tricky since this value is to be set before star=
ting the flow graph.=C2=A0 Maybe you could set it to some fixed constant li=
ke 0.5 and then when the flow graph starts you could execute a command to s=
et_time_now() to 0.0.=C2=A0 Anyway, if this advice doesn&#39;t pan out, per=
haps just search around a bit in GR archives.=C2=A0 I&#39;m sure others hav=
e successfully streamed with timed Tx commands.<br>
Rob=C2=A0<br>
<br>
On Tue, Mar 3, 2020 at 3:00 PM Lukas Haase &lt;<a href=3D"mailto:lukashaase=
@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:l=
ukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt; wrote:<br>
<br>
Hi Sam, Hi Rob,<br>
<br>
This makes so much sense!<br>
I think you are right.<br>
And indeed, the issue I found only with TX, not RX.<br>
<br>
<br>
Could you think of a possible hack sending a &quot;dummy command&quot; to t=
he RF board along with the timed tuning request?<br>
<br>
<br>
Regarding the sending of time stamps in the TX in gr-uhd, I am confused tho=
ugh. I do think this IS happening. I reproduce the work function of &quot;U=
SRP Sink&quot; here:<br>
<br>
int usrp_sink_impl::work(int noutput_items,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0gr_vector_const_void_star&amp; input_items,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0gr_vector_void_star&amp; output_items)<br>
{<br>
=C2=A0 =C2=A0 int ninput_items =3D noutput_items; // cuz it&#39;s a sync bl=
ock<br>
<br>
=C2=A0 =C2=A0 // default to send a mid-burst packet<br>
=C2=A0 =C2=A0 _metadata.start_of_burst =3D false;<br>
=C2=A0 =C2=A0 _metadata.end_of_burst =3D false;<br>
<br>
=C2=A0 =C2=A0 // collect tags in this work()<br>
=C2=A0 =C2=A0 const uint64_t samp0_count =3D nitems_read(0);<br>
=C2=A0 =C2=A0 get_tags_in_range(_tags, 0, samp0_count, samp0_count + ninput=
_items);<br>
=C2=A0 =C2=A0 if (not _tags.empty())<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 this-&gt;tag_work(ninput_items);<br>
<br>
=C2=A0 =C2=A0 if (not pmt::is_null(_length_tag_key)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // check if there is data left to send from a b=
urst tagged with length_tag<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // If a burst is started during this call to wo=
rk(), tag_work() should have<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // been called and we should have _nitems_to_se=
nd &gt; 0.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (_nitems_to_send &gt; 0) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ninput_items =3D std::min&lt;long=
&gt;(_nitems_to_send, ninput_items);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // if we run out of items to send=
, it&#39;s the end of the burst<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (_nitems_to_send - long(ninput=
_items) =3D=3D 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _metadata.end_of_bu=
rst =3D true;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // There is a tag gap since no le=
ngth_tag was found immediately following<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // the last sample of the previou=
s burst. Drop samples until the next<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // length_tag is found. Notify th=
e user of the tag gap.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 std::cerr &lt;&lt; &quot;tG&quot;=
 &lt;&lt; std::flush;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // increment the timespec by the =
number of samples dropped<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _metadata.time_spec +=3D ::uhd::t=
ime_spec_t(0, ninput_items, _sample_rate);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ninput_items;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 boost::this_thread::disable_interruption disable_interrupt;<b=
r>
#ifdef GR_UHD_USE_STREAM_API<br>
=C2=A0 =C2=A0 // send all ninput_items with metadata<br>
=C2=A0 =C2=A0 const size_t num_sent =3D _tx_stream-&gt;send(input_items, ni=
nput_items, _metadata, 1.0);<br>
#else<br>
=C2=A0 =C2=A0 const size_t num_sent =3D _dev-&gt;get_device()-&gt;send(inpu=
t_items,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ninput_items,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_metadata,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*_type,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0::uhd::device::SEND_MODE_FULL_BUFF=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01.0);<br>
#endif<br>
=C2=A0 =C2=A0 boost::this_thread::restore_interruption restore_interrupt(di=
sable_interrupt);<br>
<br>
=C2=A0 =C2=A0 // if using length_tags, decrement items left to send by the =
number of samples sent<br>
=C2=A0 =C2=A0 if (not pmt::is_null(_length_tag_key) &amp;&amp; _nitems_to_s=
end &gt; 0) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 _nitems_to_send -=3D long(num_sent);<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 // increment the timespec by the number of samples sent<br>
=C2=A0 =C2=A0 _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sam=
ple_rate);<br>
<br>
=C2=A0 =C2=A0 // Some post-processing tasks if we actually transmitted the =
entire burst<br>
=C2=A0 =C2=A0 if (not _pending_cmds.empty() &amp;&amp; num_sent =3D=3D size=
_t(ninput_items)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 GR_LOG_DEBUG(d_debug_logger,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0boost::format(&quot;Executing %d pending commands.&quot;) %<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0_pending_cmds.size());<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BOOST_FOREACH (const pmt::pmt_t&amp; cmd_pmt, _=
pending_cmds) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msg_handler_command(cmd_pmt);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 _pending_cmds.clear();<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 return num_sent;<br>
}<br>
<br>
From this code, it can be seen that the data is transmitted including _meta=
data:<br>
<br>
const size_t num_sent =3D _tx_stream-&gt;send(input_items, ninput_items, _m=
etadata, 1.0);<br>
<br>
The &quot;time_spec&quot; is updated for each block that is sent out:<br>
<br>
_metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sample_rate);<br>
<br>
Now you mentioned &quot;has_time_spec&quot; below. I extended to code in th=
e following way:<br>
<br>
=C2=A0 =C2=A0 // increment the timespec by the number of samples sent<br>
=C2=A0 =C2=A0 _metadata.time_spec +=3D ::uhd::time_spec_t(0, num_sent, _sam=
ple_rate);<br>
=C2=A0 =C2=A0 GR_LOG_DEBUG(d_debug_logger, boost::format(&quot;Setting meta=
data time_spec: %d:%f&quot;) % _metadata.time_spec.get_full_secs() % _metad=
ata.time_spec.get_frac_secs());<br>
=C2=A0 =C2=A0 _metadata.has_time_spec =3D true;<br>
<br>
<br>
To my understanding, gr-uhd now passes the correct timestamps on to UHD.<br=
>
However, the timed command is still ignored.<br>
<br>
<br>
Thanks,<br>
Lukas<br>
<br>
<br>
PS: I will attempt to use the tagged stream ... but then I will have the is=
sue that I need to tune TX *plus* RX at the same time! Furthermore, the str=
eaming tags API is super rudimentary. Also, skimming the source code for th=
e tag processing, I am not sure if this would change anything.<br>
<br>
<br>
<br>
<br>
=C2=A0<br>
=C2=A0<br>
=C2=A0<br>
<br>
Gesendet:=C2=A0Dienstag, 03. M=C3=A4rz 2020 um 13:25 Uhr<br>
Von:=C2=A0&quot;Sam Reiter&quot; &lt;<a href=3D"mailto:sam.reiter@ettus.com=
" target=3D"_blank">sam.reiter@ettus.com</a>[mailto:<a href=3D"mailto:sam.r=
eiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>]&gt;<br>
An:=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.edu" tar=
get=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossler@nd.edu=
" target=3D"_blank">rkossler@nd.edu</a>]&gt;<br>
Cc:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukashaase@=
gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt;, &quot;<a href=3D"mail=
to:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com=
</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a>]&quot; &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>]&gt;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX when us=
ing a timed command<br>
<br>
Everything Rob is saying is dead on - the &quot;sense of time&quot; for the=
 radio is a 64-bit counter within the radio core that other blocks (like th=
e DDC and DUC) don&#39;t have access to. Those blocks need to derive a sens=
e of time from the timestamps of CHDR packets passing through them. I just =
wrapped up a new app note that covers this (among other synchronization-rel=
ated topics):<br>
=C2=A0<br>
<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comma=
nds_in_UHD#Clocking_and_Timekeeping_in_the_USRP[https://kb.ettus.com/Synchr=
onizing_USRP_Events_Using_Timed_Commands_in_UHD%23Clocking_and_Timekeeping_=
in_the_USRP]" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Syn=
chronizing_USRP_Events_Using_Timed_Commands_in_UHD#Clocking_and_Timekeeping=
_in_the_USRP[https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Com=
mands_in_UHD#Clocking_and_Timekeeping_in_the_USRP]</a><br>
=C2=A0<br>
Lukas, I would doubt that this is an undiscovered bug as much as it is an i=
ssue with implementation. If this were in C++, you&#39;d want to set the &#=
39;has_time_spec&#39; and &#39;time_spec&#39; fields of your TX metadata fo=
r at least 1 packet to impart a sense of time on the DUC:<br>
=C2=A0<br>
<a href=3D"https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html=
%5Bhttps://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D%5Bht=
tps://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhttps://fi=
les.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D%5D" rel=3D"norefe=
rrer" target=3D"_blank">https://files.ettus.com/manual/structuhd_1_1tx__met=
adata__t.html[https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.h=
tml][https://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5Bhtt=
ps://files.ettus.com/manual/structuhd_1_1tx__metadata__t.html%5D]</a><br>
=C2=A0<br>
I just spoke with someone on my end who said you need to use stream tags to=
 do this, but again, I don&#39;t currently have much direction for how that=
 would be implemented in your code.<br>
=C2=A0<br>
<br>
Sam Reiter=C2=A0=C2=A0<br>
<br>
On Tue, Mar 3, 2020 at 11:48 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@=
nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>][mailto:<a href=3D"mailt=
o:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>]]&gt; wrote:<=
br>
Also, note that there is no corresponding issue on receive because the Rx r=
adio always inserts the time stamp=C2=A0in the sample stream. So, I guess y=
ou would not see this with the DDC.<br>
Rob=C2=A0<br>
<br>
On Tue, Mar 3, 2020 at 12:43 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@=
nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>][mailto:<a href=3D"mailt=
o:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>]]&gt; wrote:<=
br>
<br>
Hi Lukas,<br>
The FPGA image on the USRP is divided into blocks such as the DUC block and=
 the Radio block.=C2=A0 The latter controls the RF daughterboard and has ac=
cess to the device clock.=C2=A0 So, when you provide a timed command to the=
 Radio block (such as for tuning the RF) it can implement the command at th=
e specified time by comparing to the device clock.=C2=A0 The DUC block does=
 not have access to the MB clock and so when you give it a timed command, i=
t monitors the incoming sample stream to extract the time. If the sample st=
ream does not include a time stamp, the command never executes.=C2=A0 Don&#=
39;t think of this as a bug, but rather as a design limitation.<br>
=C2=A0<br>
When I work directly with UHD from C++, I use the function rx_streamer::iss=
ue_stream_command() which has options to stream data with no time stamp or =
with a time stamp.=C2=A0 When using timed commands with DUC or DDC, I must =
include the time stamp or else the command will never be executed.=C2=A0 Bu=
t, with GR, I don&#39;t know how to specify the corresponding options.<br>
Rob=C2=A0<br>
<br>
On Tue, Mar 3, 2020 at 12:29 PM Lukas Haase &lt;<a href=3D"mailto:lukashaas=
e@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:=
lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>][mailto:<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailt=
o:<a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at<=
/a>]]&gt; wrote:Hi Sam, Hi Rob,<br>
<br>
Thanks for following up on this!<br>
I am very happy you were able to reproduce this ... which means that at lea=
st an issue exists :)<br>
<br>
What Sam suggests makes sense even though hard to believe for me:<br>
<br>
1. How could something like that go unnoticed for so long? (I am sure I am =
not the first performing digital tuning)<br>
2. In the past I got successful phase coherence using automatic tuning (pas=
sing center frequency + offset to tune_request_t and using integer-N tuning=
) using timed commands. This did not work reliably and only for certain fre=
quencies but in my opinion this should have INCLUDED the DUC tuning. If the=
 DUC retune wouldn&#39;t have been executed as part of this automatic tunin=
g, I could not have gotten phase coherence (and actually, not even the desi=
red frequency).<br>
<br>
The reason why I am only doing DUC tuning now is to avoid all the hassle wi=
th integer-N tuning, PLL retuning and settling time.<br>
<br>
Sam, what is the &quot;radio block&quot; you were talking about?<br>
<br>
Anyway, would it be worthwile to attempt debugging this is absence of gr?<b=
r>
The only reason this prevented me from doing is that I would need to manual=
ly create the baseband samples and continuously stream them out while in pa=
rallel do the retuning.<br>
I am not too familiar with UHD on its own but I assume this would be very c=
omplicated, require multithreading etc.<br>
Do you have any demo code that could be easily modified for this scenario?<=
br>
<br>
Best,<br>
Lukas<br>
<br>
<br>
Gesendet:=C2=A0Dienstag, 03. M=C3=A4rz 2020 um 12:08 Uhr<br>
Von:=C2=A0&quot;Sam Reiter&quot; &lt;<a href=3D"mailto:sam.reiter@ettus.com=
" target=3D"_blank">sam.reiter@ettus.com</a>[mailto:<a href=3D"mailto:sam.r=
eiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>][mailto:<a href=
=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>=
[mailto:<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reite=
r@ettus.com</a>]]&gt;<br>
An:=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.edu" tar=
get=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkossler@nd.edu=
" target=3D"_blank">rkossler@nd.edu</a>][mailto:<a href=3D"mailto:rkossler@=
nd.edu" target=3D"_blank">rkossler@nd.edu</a>[mailto:<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>]]&gt;<br>
Cc:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukashaase@=
gmx.at" target=3D"_blank">lukashaase@gmx.at</a>][mailto:<a href=3D"mailto:l=
ukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D=
"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]]&gt;, &=
quot;<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a>][mailto:<a href=3D"mail=
to:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com=
</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a>]]&quot; &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>][mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>]]&gt=
;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX when us=
ing a timed command<br>
<br>
For what it&#39;s worth, I was able to reproduce the behavior described her=
e, but didn&#39;t get to dig into it much. My leading suspicion would be wh=
at Rob mentioned about timestamping. Lukas&#39; code sets a command time, b=
ut I&#39;m not clear on how timestamp metadata for packets being sent to th=
e radio are handled. Might be a good question to loop the discuss-gnuradio =
mailing list in on?<br>
<br>
=C2=A0<br>
<br>
Sam Reiter=C2=A0=C2=A0<br>
<br>
On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>]][mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>][mai=
lto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>]]]&gt; wrote:<br>
I wonder if the issue is related to a missing time stamp on the baseband sa=
mples going from GR to UHD.=C2=A0 If the stream does not have a time stamp,=
 the DUC is unable to apply the timed command because the DUC does not real=
ly know the time - it must pull the time from the streaming samples. This i=
s in contrast to the radio block which does have access to time and can app=
ly timed commands by referring to the motherboard clock.<br>
=C2=A0<br>
I am not too familiar with GR so I&#39;m not sure how to know if GR is putt=
ing a time stamp on the streaming samples.<br>
Rob=C2=A0<br>
<br>
On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>]][mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>][mai=
lto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>]]]&gt; wrote:Hi Marcus,<=
br>
<br>
Thank you that would be amazing!<br>
<br>
I followed the tutorial and built everything from source:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
$ uname -a<br>
Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC 20=
20 x86_64 x86_64 x86_64 GNU/Linux<br>
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
PS: For some reason I sometimes do not get responses from this list. I just=
 saw it looking at the mailman archives. Hence I cannot respond (to keep he=
aders intact) but need to create a new message and manually &quot;quote&quo=
t;. I hope that still preserves the context somehow.<br>
<br>
<br>
<br>
Marcus Leech wrote:<br>
&gt; On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:<br>
&gt;&gt; Hi again,<br>
&gt;&gt;<br>
&gt;&gt; I created a minimum example (gnuradio) that shows the issue descri=
bed below.<br>
&gt;&gt; To summarize: Retuning to a different dsp frequency on an USRP X31=
0 (+UBX160) does not work (command ignored) ONLY if a timed command (in fut=
ure is used).<br>
&gt;&gt; The code shows it in a simple manner. Commenting out the single li=
ne with set_command_time makes the example work.<br>
&gt;&gt;<br>
&gt;&gt; I am absolutely out of ideas and would appreciate any input!<br>
&gt;&gt;<br>
&gt;&gt; Best,<br>
&gt;&gt; Lukas<br>
&gt; Lukas.<br>
&gt;<br>
&gt; Thanks for sticking with this.=C2=A0 I&#39;ll have a discussion with E=
ttus R&amp;D to<br>
&gt; see if this is a known issue and/or if there&#39;s a workaround.<br>
&gt;<br>
&gt; Remind me which version of UHD you&#39;re using?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:US=
RP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[=
mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP=
-users@lists.ettus.com</a>]][mailto:<a href=3D"mailto:USRP-users@lists.ettu=
s.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>][mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bl=
ank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lis=
ts.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>]]]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om_______________________________________________USRP-users%5Bhttp://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com______________________=
_________________________USRP-users%5D%5Bhttp://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com___________________________________________=
____USRP-users%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com_______________________________________________USRP-users%5D%5D" re=
l=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/=
usrp-users_lists.ettus.com_______________________________________________<b=
r>
USRP-users[http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om_______________________________________________USRP-users][http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com_______________________=
________________________USRP-users%5Bhttp://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com_______________________________________________=
USRP-users%5D]</a> mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>][mailto:<a href=3D"mailto:US=
RP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[=
mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP=
-users@lists.ettus.com</a>]][mailto:<a href=3D"mailto:USRP-users@lists.ettu=
s.com" target=3D"_blank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>][mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bl=
ank">USRP-users@lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lis=
ts.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>]]]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D%=
5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5Bhttp=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com%5D%5D" rel=
=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com[http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com][http://lists.ettus.com/mailman/listinfo/usrp-users_lists=
.ettus.com%5Bhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com%5D]</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>

--000000000000a0419905a00dcbee--


--===============3708040007851016783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3708040007851016783==--

